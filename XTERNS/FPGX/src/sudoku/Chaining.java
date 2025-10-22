/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;
import java.util.concurrent.ConcurrentLinkedQueue;

import sudoku.*;
import sudoku.Grid.*;

/**
 * Implementation of all solving techniques involving chains of implications.
 * This includes all types of Bidirectional Cycles and all types
 * of Forcing Chains.
 */
public class Chaining implements IndirectHintProducer {

    private final boolean isMultipleEnabled;
    private final boolean isDynamic;
    private final boolean isNisho;
    private final int level;
    private final boolean parallel;
    private final int nestingLimit;
    private Grid saveGrid = new Grid();
    private List<IndirectHintProducer> otherRules;

    /**
     * Create the engine for searching forcing chains.
     * @param isMultipleEnabled Whether multiple forcing chains (Cell and Region Forcing
     * Chains) are searched
     * @param isDynamic Whether dynamic forcing chains are included
     * @param isNishio Whether Nishio mode is activated
     * Only used if <tt>isDynamic</tt> and <tt>isMultiple</tt> are <tt>false</tt>.
     */
    public Chaining(boolean isMultipleEnabled, boolean isDynamic, boolean isNishio, int level, boolean parallel, int nestingLimit) {
        this.isMultipleEnabled = isMultipleEnabled;
        this.isDynamic = isDynamic;
        this.isNisho = isNishio;
        this.level = level;
        this.parallel = parallel;
        this.nestingLimit = nestingLimit;
    }

    double getDifficulty() {
        if (level > 0)
            return 8.5 + 0.5 * level;
        else if (isNisho)
            return 7.5;
        else if (isDynamic)
            return 8.5;
        else if (isMultipleEnabled)
            return 8.0;
        else
            throw new IllegalStateException();
    }

    /**
     * Search for hints on the given grid
     * @param grid the grid on which to search fro hints
     * @return the hints found
     */
    protected List<ChainingHint> getHintList(Grid grid) {
        List<ChainingHint> result;
        if (isMultipleEnabled || isDynamic) {
            result = getMultipleChainsHintList(grid);
        } else {
            List<ChainingHint> xLoops = getLoopHintList(grid, false, true);
            List<ChainingHint> yLoops = getLoopHintList(grid, true, false);
            List<ChainingHint> xyLoops = getLoopHintList(grid, true, true);
            result = xLoops;
            result.addAll(yLoops);
            result.addAll(xyLoops);
        }
        if(result.isEmpty()) { return result; }

        /*
         * Sort the resulting hints. The hints with the shortest chain length
         * are returned first.
         */
        Collections.sort(result, new Comparator<ChainingHint>() {
            public int compare(ChainingHint h1, ChainingHint h2) {
                double d1 = h1.getDifficulty();
                double d2 = h2.getDifficulty();
                if (d1 < d2) return -1;
                if (d1 > d2) return 1;
                int l1 = h1.getComplexity();
                int l2 = h2.getComplexity();
                if (l1 != l2) return l1 - l2;
                return h1.getSortKey() - h2.getSortKey();
            }
        });
        return result;
    }

    private List<ChainingHint> getLoopHintList(Grid grid, boolean isYChainEnabled,
            boolean isXChainEnabled) {
        List<ChainingHint> result = new ArrayList<ChainingHint>();
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = grid.getCell(x, y);
                if (cell.getValue() == 0) {
                int cardinality = cell.getPotentialValues().cardinality();
                    if (cardinality > 1) {
                        for (int value = 1; value <= 9; value++) {
                            if (cell.hasPotentialValue(value)) {
                                Potential pOn = new Potential(cell, value, true);
                                doUnaryChaining(grid, pOn, result, isYChainEnabled, isXChainEnabled);
                            }
                        }
                    }
                }
            }
        }
        return result;
    }

    /**
     * Search for hints on the given grid
     * @param grid the grid on which to search for hints
     * @param isYChainEnabled whether Y-Links are used in "on to off" searches
     * @param isXChainEnabled whether X-Links are used in "off to on" searches
     * @return the hints found
     */
    private List<ChainingHint> getMultipleChainsHintList(Grid grid, Cell cell, int cardinality) {
        List<ChainingHint> result = new ArrayList<ChainingHint>();
                        Map<Integer, LinkedSet<Potential>> valueToOn =
                            new HashMap<Integer, LinkedSet<Potential>>();
                        Map<Integer, LinkedSet<Potential>> valueToOff =
                            new HashMap<Integer, LinkedSet<Potential>>();
                        LinkedSet<Potential> cellToOn = null;
                        LinkedSet<Potential> cellToOff = null;

                        for (int value = 1; value <= 9; value++) {
                            if (cell.hasPotentialValue(value)) {
                                Potential pOn = new Potential(cell, value, true);
                                Potential pOff = new Potential(cell, value, false);
                                LinkedSet<Potential> onToOn = new LinkedSet<Potential>();
                                LinkedSet<Potential> onToOff = new LinkedSet<Potential>();
                                boolean doDouble = (cardinality >= 3 && !isNisho && isDynamic);
                                boolean doContradiction = isDynamic || isNisho;
                                doBinaryChaining(grid, pOn, pOff, result, onToOn, onToOff,
                                        doDouble, doContradiction);

                                if (!isNisho) {
                                    doRegionChainings(grid, result, cell, value, onToOn, onToOff);
                                }

                                valueToOn.put(value, onToOn);
                                valueToOff.put(value, onToOff);
                                if (cellToOn == null) {
                                    cellToOn = new LinkedSet<Potential>();
                                    cellToOff = new LinkedSet<Potential>();
                                    cellToOn.addAll(onToOn);
                                    cellToOff.addAll(onToOff);
                                } else {
                                    cellToOn.retainAll(onToOn);
                                    cellToOff.retainAll(onToOff);
                                }
                            }
                        }

                        if (!isNisho) {
                            if (cardinality == 2 || (isMultipleEnabled && cardinality > 2)) {
                                for (Potential p : cellToOn) {
                                    CellChainingHint hint = createCellReductionHint(cell, p, valueToOn);
                                    if (hint.isWorth())
                                        result.add(hint);
                                }
                                for (Potential p : cellToOff) {
                                    CellChainingHint hint = createCellReductionHint(cell, p, valueToOff);
                                    if (hint.isWorth())
                                        result.add(hint);
                                }
                            }
                        }
        return result;
    }

    private List<ChainingHint> getMultipleChainsHintList(Grid grid) {
        List<ChainingHint> result = new ArrayList<ChainingHint>();
        List<Cell> cellsToProcess = new ArrayList<Cell>();
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = grid.getCell(x, y);
                if (cell.getValue() == 0) {
                int cardinality = cell.getPotentialValues().cardinality();
                    if (cardinality > 2 || (cardinality > 1 && isDynamic)) {
                        if (!parallel) {
                            result.addAll(getMultipleChainsHintList(grid, cell, cardinality));
                        }
                        else {
                            cellsToProcess.add(cell);
                        }
                    }
                }
            }
        }
        if (!parallel) { return result; }
        if(cellsToProcess.isEmpty()) { return result; }

        ConcurrentLinkedQueue<ChainingHint> parallelResult = new ConcurrentLinkedQueue<ChainingHint>();
        List<MultipleChainsHintsCollector> threads = new ArrayList<MultipleChainsHintsCollector>();
        Thread lastThread = null;
        for(Cell cell : cellsToProcess) {
            MultipleChainsHintsCollector t = new MultipleChainsHintsCollector(this, grid, cell, parallelResult, lastThread);
            threads.add(t);
            t.start();
            lastThread = t;
        }
        try {
            lastThread.join();
        } catch (InterruptedException e) {}
        result.addAll(parallelResult);
        return result;
    }

    class MultipleChainsHintsCollector extends Thread {
        private Chaining chaining;
        private ConcurrentLinkedQueue<ChainingHint> accumulator;
        private final Grid grid = new Grid();
        private final Cell cell;
        private final Thread previousThread;
        MultipleChainsHintsCollector(Chaining caller, Grid grid, Cell cell, ConcurrentLinkedQueue<ChainingHint> result, Thread lastThread) {
            this.chaining = new Chaining(caller.isMultipleEnabled, caller.isDynamic, caller.isNisho, caller.level, false, caller.nestingLimit);
            accumulator = result;
            grid.copyTo(this.grid);
            this.cell = this.grid.getCell(cell.getX(), cell.getY());
            previousThread = lastThread;
        }
        @Override
        public void run() {
            int cardinality = this.cell.getPotentialValues().cardinality();
            List<ChainingHint> result = chaining.getMultipleChainsHintList(this.grid, this.cell, cardinality);
            if ( previousThread != null ) {
                try {
                    previousThread.join();
                } catch (InterruptedException e) {}
            }
            accumulator.addAll(result);
        }
    }

    private Potential getReversedCycle(Potential org) {
        List<Potential> result = new LinkedList<Potential>();
        String explanations = null;
        while (org != null) {
            Potential rev = new Potential(org.cell, org.value, !org.isOn, org.cause, explanations);
            explanations = org.explanation;
            result.add(0, rev);
            if (!org.parents.isEmpty())
                org = org.parents.get(0);
            else
                org = null;
        }
        Potential prev = null;
        for (Potential rev : result) {
            if (prev != null)
                prev.parents.add(rev);
            prev = rev;
        }
        return result.get(0);
    }

    /**
     * Look for, and add single focring chains, and bidirectional cycles.
     * @param grid the sudoku grid
     * @param pOn the starting potential
     * @param result filled with the hints found
     * @param isYChainEnabled whether y-chain are enabled
     * @param isXChainEnabled whether x-chains are enabled
     */
    private void doUnaryChaining(Grid grid, final Potential pOn, List<ChainingHint> result,
            boolean isYChainEnabled, boolean isXChainEnabled) {

        if (pOn.cell.getPotentialValues().cardinality() > 2
                && !isXChainEnabled)
            return;

        final List<Potential> cycles = new ArrayList<Potential>();
        final List<Potential> chains = new ArrayList<Potential>();
        LinkedSet<Potential> onToOn = new LinkedSet<Potential>();
        LinkedSet<Potential> onToOff = new LinkedSet<Potential>();
        onToOn.add(pOn);
        doCycles(grid, onToOn, onToOff, isYChainEnabled, isXChainEnabled, cycles, pOn);
        if (isXChainEnabled) {

            onToOn = new LinkedSet<Potential>();
            onToOff = new LinkedSet<Potential>();
            onToOn.add(pOn);
            doForcingChains(grid, onToOn, onToOff, isYChainEnabled, chains, pOn);

            final Potential pOff = new Potential(pOn.cell, pOn.value, false);
            onToOn = new LinkedSet<Potential>();
            onToOff = new LinkedSet<Potential>();
            onToOff.add(pOff);
            doForcingChains(grid, onToOn, onToOff, isYChainEnabled, chains, pOff);
        }
        for (Potential dstOn : cycles) {
            Potential dstOff = getReversedCycle(dstOn);
            ChainingHint hint = createCycleHint(grid, dstOn, dstOff, isYChainEnabled,
                    isXChainEnabled);
            if (hint.isWorth())
                result.add(hint);
        }
        for (Potential target : chains) {
            ChainingHint hint = createForcingChainHint(grid, target, isYChainEnabled, isXChainEnabled);
            if (hint.isWorth())
                result.add(hint);
        }

    }

    /**
     * From the potential <code>p</code>, compute the consequences from
     * both states.
     * <p>
     * More precisely, <code>p</code> is first assumed to be correct
     * ("on"), and then to be incorrect ("off"); and the following sets are
     * created:
     * <ul>
     * <li><b><code>onToOn</code></b> the set of potentials that must be "on"
     * when <code>p</code> is "on"
     * <li><b><code>onToOff</code></b> the set of potentials that must be "off"
     * when <code>p</code> is "on"
     * <li><b><code>offToOn</code></b> the set of potentials that must be "on"
     * when <code>p</code> is "off"
     * <li><b><code>offToOff</code></b> the set of potentials that must be "off"
     * when <code>p</code> is "off"
     * </ul>
     * Then the following rules are applied:
     * <ul>
     * <li>If a potential belongs to both <code>onToOn</code> and <code>onToOff</code>,
     * the potential <code>p</code> cannot be "on" because it would implie a potential
     * to be both "on" and "off", which is an absurd.
     * <li>If a potential belongs to both <code>offToOn</code> and <code>offToOff</code>,
     * the potential <code>p</code> cannot be "off" because it would implie a potential
     * to be both "on" and "off", which is an absurd.
     * <li>If a potential belongs to both <code>onToOn</code> and <code>offToOn</code>,
     * this potential must be "on", because it is implied to be "on" by the two possible
     * states of <code>p</code>.
     * <li>If a potential belongs to both <code>onToOff</code> and <code>offToOff</code>,
     * this potential must be "off", because it is implied to be "off" by the two possible
     * states of <code>p</code>.
     * </ul>
     * Note that if a potential belongs to all the four sets, the Sudoku has no solution.
     * This is not checked.
     * @param grid the grid
     * @param p the potential to gather hints from
     * @param accu the accumulator for hints
     * @param onToOn an empty set, filled with potentials that get on if the given
     * potential is on.
     * @param onToOff an empty set, filled with potentials that get off if the given
     * potential is on.
     * @throws InterruptedException
     */
    private void doBinaryChaining(Grid grid, Potential pOn, Potential pOff,
            List<ChainingHint> result, LinkedSet<Potential> onToOn,
            LinkedSet<Potential> onToOff, boolean doReduction, boolean doContradiction) {

        Potential[] absurdPotential = null;
        LinkedSet<Potential> offToOn = new LinkedSet<Potential>();
        LinkedSet<Potential> offToOff = new LinkedSet<Potential>();

        /*
         * Circular Forcing Chains (hypothesis implying its negation)
         * are already covered by Cell Forcing Chains, and are therefore
         * not checked for.
         */

        onToOn.add(pOn);
        absurdPotential = doChaining(grid, onToOn, onToOff);
        if (doContradiction && absurdPotential != null) {
            BinaryChainingHint hint = createChainingOffHint(absurdPotential[0], absurdPotential[1],
                    pOn, pOn, true);
            if (hint.isWorth())
                result.add(hint);
        }

        offToOff.add(pOff);
        absurdPotential = doChaining(grid, offToOn, offToOff);
        if (doContradiction && absurdPotential != null) {
            BinaryChainingHint hint = createChainingOnHint(absurdPotential[0], absurdPotential[1],
                    pOff, pOff, true);
            if (hint.isWorth())
                result.add(hint);
        }

        if (doReduction) {
            for (Potential pFromOn : onToOn) {
                Potential pFromOff = offToOn.get(pFromOn);
                if (pFromOff != null) {
                    BinaryChainingHint hint = createChainingOnHint(pFromOn, pFromOff, pOn, pFromOn, false);
                    if (hint.isWorth())
                        result.add(hint);
                }
            }

            for (Potential pFromOn : onToOff) {
                Potential pFromOff = offToOff.get(pFromOn);
                if (pFromOff != null) {
                    BinaryChainingHint hint = createChainingOffHint(pFromOn, pFromOff, pOff, pFromOff, false);
                    if (hint.isWorth())
                        result.add(hint);
                }
            }
        }

    }

    private void doRegionChainings(Grid grid, List<ChainingHint> result, Cell cell,
            int value, LinkedSet<Potential> onToOn, LinkedSet<Potential> onToOff) {
        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            Grid.Region region = grid.getRegionAt(regionType, cell.getX(), cell.getY());
            BitSet potentialPositions = region.getPotentialPositions(value);

            int cardinality = potentialPositions.cardinality();
            if (cardinality == 2 || (isMultipleEnabled && cardinality > 2)) {
                int firstPos = potentialPositions.nextSetBit(0);
                Cell firstCell = region.getCell(firstPos);

                if (firstCell.equals(cell)) {
                    Map<Integer, LinkedSet<Potential>> posToOn =
                        new HashMap<Integer, LinkedSet<Potential>>();
                    Map<Integer, LinkedSet<Potential>> posToOff =
                        new HashMap<Integer, LinkedSet<Potential>>();
                    LinkedSet<Potential> regionToOn = new LinkedSet<Potential>();
                    LinkedSet<Potential> regionToOff = new LinkedSet<Potential>();

                    for (int pos = firstPos; pos >= 0; pos = potentialPositions.nextSetBit(pos+1)) {
                        Cell otherCell = region.getCell(pos);
                        if (otherCell.equals(cell)) {
                            posToOn.put(pos, onToOn);
                            posToOff.put(pos, onToOff);
                            regionToOn.addAll(onToOn);
                            regionToOff.addAll(onToOff);
                        } else {
                            Potential other = new Potential(otherCell, value, true);
                            LinkedSet<Potential> otherToOn = new LinkedSet<Potential>();
                            LinkedSet<Potential> otherToOff = new LinkedSet<Potential>();
                            otherToOn.add(other);
                            doChaining(grid, otherToOn, otherToOff);
                            posToOn.put(pos, otherToOn);
                            posToOff.put(pos, otherToOff);
                            regionToOn.retainAll(otherToOn);
                            regionToOff.retainAll(otherToOff);
                        }
                    }

                    for (Potential p : regionToOn) {
                        RegionChainingHint hint = createRegionReductionHint(region, value,
                                p, posToOn);
                        if (hint.isWorth())
                            result.add(hint);
                    }
                    for (Potential p : regionToOff) {
                        RegionChainingHint hint = createRegionReductionHint(region, value,
                                p, posToOff);
                        if (hint.isWorth())
                            result.add(hint);
                    }
                }
            }
        }
    }

    /**
     * Get the set of all {@link Potential}s that cannot be
     * valid (are "off") if the given potential is "on"
     * (i.e. if its value is the correct one for the cell).
     * @param grid the Sudoku grid
     * @param p the potential that is assumed to be "on"
     * @return the set of potentials that must be "off"
     */
    private Set<Potential> getOnToOff(Grid grid, Potential p, boolean isYChainEnabled) {
        Set<Potential> result = new LinkedHashSet<Potential>();

        if (isYChainEnabled) {
            BitSet potentialValues = p.cell.getPotentialValues();
            for (int
                 value = potentialValues.nextSetBit(0);
                 value > 0;
                 value = potentialValues.nextSetBit(value+1)
                 ) {
                if (value != p.value                              )
                    result.add(new Potential(p.cell, value, false, p,
                            Potential.Cause.NakedSingle, "the cell can contain only one value"));
            }
        }

        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            Grid.Region region = grid.getRegionAt(regionType, p.cell.getX(), p.cell.getY());
            for (int i = 0; i < 9; i++) {
                Cell cell = region.getCell(i);
                if (!cell.equals(p.cell) && cell.hasPotentialValue(p.value))
                    result.add(new Potential(cell, p.value, false, p,
                            getRegionCause(region), "the value can occur only once in the region.toString()"));
            }
        }
        return result;
    }

    private void addHiddenParentsOfCell(Potential p, Grid grid, Grid source,
            LinkedSet<Potential> offPotentials) {
        int x = p.cell.getX();
        int y = p.cell.getY();
        Cell curCell = grid.getCell(x, y);
        Cell srcCell = source.getCell(x, y);
        for (int value = 1; value <= 9; value++) {
            if (srcCell.hasPotentialValue(value) && !curCell.hasPotentialValue(value)) {
                Potential parent = new Potential(curCell, value, false);
                parent = offPotentials.get(parent);
                if (parent == null)
                    throw new RuntimeException("Parent not found");
                p.parents.add(parent);
            }
        }
    }

    private void addHiddenParentsOfRegion(Potential p, Grid grid, Grid source,
            Grid.Region curRegion, LinkedSet<Potential> offPotentials) {
        Grid.Region srcRegion = source.getRegionAt(curRegion.getClass(),
                p.cell.getX(), p.cell.getY());
        BitSet curPositions = curRegion.copyPotentialPositions(p.value);
        BitSet srcPositions = srcRegion.copyPotentialPositions(p.value);
        srcPositions.andNot(curPositions);
        for (int i = srcPositions.nextSetBit(0); i >= 0; i = srcPositions.nextSetBit(i+1)) {
            Cell curCell = curRegion.getCell(i);
            Potential parent = new Potential(curCell, p.value, false);
            parent = offPotentials.get(parent);
            if (parent == null)
                throw new RuntimeException("Parent not found");
            p.parents.add(parent);
        }
    }

    static Potential.Cause getRegionCause(Region region) {
        if (region instanceof Block)
            return Potential.Cause.HiddenBlock;
        else if (region instanceof Column)
            return Potential.Cause.HiddenColumn;
        else
            return Potential.Cause.HiddenRow;
    }

    /**
     * Get the set of all {@link Potential}s that must be
     * "on" (i.e. if their values are their correct cell's values)
     * if the given potential is not valid ("off").
     * @param grid the Sudoku grid
     * @param p the potential that is assumed to be "off"
     * @return the set of potentials that must be "on"
     */
    private Set<Potential> getOffToOn(Grid grid, Potential p, Grid source,
            LinkedSet<Potential> offPotentials, boolean isYChainEnabled,
            boolean isXChainEnabled) {
        Set<Potential> result = new LinkedHashSet<Potential>();

        if (isYChainEnabled) {
            BitSet potentialValues = p.cell.getPotentialValues();
            if (potentialValues.cardinality() == 2) {
                int otherValue = potentialValues.nextSetBit(0);
                if (otherValue == p.value)
                    otherValue = potentialValues.nextSetBit(otherValue+1);
                Potential pOn = new Potential(p.cell, otherValue, true, p,
                        Potential.Cause.NakedSingle, "only remaining possible value in the cell");
                addHiddenParentsOfCell(pOn, grid, source, offPotentials);
                result.add(pOn);
            }
        }

        if (isXChainEnabled) {
            for (Class<? extends Grid.Region> partType : grid.getRegionTypes()) {
                Grid.Region region = grid.getRegionAt(partType, p.cell.getX(), p.cell.getY());
                BitSet potentialPositions = region.getPotentialPositions(p.value);
                if (potentialPositions.cardinality() == 2) {
                    int otherPosition = potentialPositions.nextSetBit(0);
                    Cell otherCell = region.getCell(otherPosition);
                    if (otherCell.equals(p.cell)) {
                        otherPosition = potentialPositions.nextSetBit(otherPosition+1);
                        otherCell = region.getCell(otherPosition);
                    }
                    Potential pOn = new Potential(otherCell, p.value, true, p,
                            getRegionCause(region), "only remaining possible position in the region.toString()");
                    addHiddenParentsOfRegion(pOn, grid, source, region, offPotentials);
                    result.add(pOn);
                }
            }
        }

        return result;
    }

    /**
     * Whether <tt>parent</tt> is an ancestor of <tt>child</tt>.
     */
    private boolean isParent(Potential child, Potential parent) {
        Potential pTest = child;
        while (!pTest.parents.isEmpty()) {
            pTest = pTest.parents.get(0);
            if (pTest.equals(parent))
                return true;
        }
        return false;
    }

    private void doCycles(Grid grid, LinkedSet<Potential> toOn,
            LinkedSet<Potential> toOff, boolean isYChainEnabled,
            boolean isXChainEnabled, List<Potential> cycles, Potential source) {
        List<Potential> pendingOn = new LinkedList<Potential>(toOn);
        List<Potential> pendingOff = new LinkedList<Potential>(toOff);

        int length = 0;
        while (!pendingOn.isEmpty() || !pendingOff.isEmpty()) {
            length++;
            while (!pendingOn.isEmpty()) {
                Potential p = pendingOn.remove(0);
                Set<Potential> makeOff = getOnToOff(grid, p, isYChainEnabled);
                for (Potential pOff : makeOff) {
                    if (!isParent(p, pOff)) {
                        pendingOff.add(pOff);
                            toOff.add(pOff);
                    }
                }
            }
            length++;
            while (!pendingOff.isEmpty()) {
                Potential p = pendingOff.remove(0);
                Set<Potential> makeOn = getOffToOn(grid, p, saveGrid, toOff,
                        isYChainEnabled, isXChainEnabled);
                for (Potential pOn : makeOn) {
                    if (length >= 4 && pOn.equals(source)) {
                        cycles.add(pOn);
                    }
                    if (!toOn.contains(pOn)) {
                        pendingOn.add(pOn);
                            toOn.add(pOn);
                    }
                }
            }
        }
    }

    private void doForcingChains(Grid grid, LinkedSet<Potential> toOn,
            LinkedSet<Potential> toOff, boolean isYChainEnabled,
            List<Potential> chains, Potential source) {
        List<Potential> pendingOn = new LinkedList<Potential>(toOn);
        List<Potential> pendingOff = new LinkedList<Potential>(toOff);
        while (!pendingOn.isEmpty() || !pendingOff.isEmpty()) {
            while (!pendingOn.isEmpty()) {
                Potential p = pendingOn.remove(0);
                Set<Potential> makeOff = getOnToOff(grid, p, isYChainEnabled);
                for (Potential pOff : makeOff) {
                    Potential pOn = new Potential(pOff.cell, pOff.value, true);
                    if (source.equals(pOn)) {
                        if (!chains.contains(pOff))
                            chains.add(pOff);
                    }
                        if (!toOff.contains(pOff)) {
                            pendingOff.add(pOff);
                            toOff.add(pOff);
                        }
                }
            }
            while (!pendingOff.isEmpty()) {
                Potential p = pendingOff.remove(0);
                Set<Potential> makeOn = getOffToOn(grid, p, saveGrid, toOff,
                        isYChainEnabled, true);
                for (Potential pOn : makeOn) {
                    Potential pOff = new Potential(pOn.cell, pOn.value, false);
                    if (source.equals(pOff)) {
                        if (!chains.contains(pOn))
                            chains.add(pOn);
                    }
                    if (!toOn.contains(pOn)) {
                        pendingOn.add(pOn);
                        toOn.add(pOn);
                    }
                }
            }
        }
    }

    /**
     * Given the initial sets of potentials that are assumed to be "on" and "off",
     * complete the sets with all other potentials that must be "on"
     * or "off" as a result of the assumption.
     * <p>
     * Both sets must be disjoined, and remain disjoined after this call.
     * @param grid the grid
     * @param toOn the potentials that are assumed to be "on"
     * @param toOff the potentials that are assumed to be "off"
     * @return <code>null</code> on success; the first potential that would have
     * to be both "on" and "off" else.
     */
    private Potential[] doChaining(Grid grid, LinkedSet<Potential> toOn,
            LinkedSet<Potential> toOff) {
        grid.copyTo(saveGrid);
        try {
            List<Potential> pendingOn = new LinkedList<Potential>(toOn);
            List<Potential> pendingOff = new LinkedList<Potential>(toOff);
            while (!pendingOn.isEmpty() || !pendingOff.isEmpty()) {
                if (!pendingOn.isEmpty()) {
                    Potential p = pendingOn.remove(0);
                    Set<Potential> makeOff = getOnToOff(grid, p, !isNisho);
                    for (Potential pOff : makeOff) {
                        Potential pOn = new Potential(pOff.cell, pOff.value, true);
                        if (toOn.contains(pOn)) {
                            pOn = toOn.get(pOn);
                            return new Potential[] {pOn, pOff};
                        } else if (!toOff.contains(pOff)) {
                            toOff.add(pOff);
                            pendingOff.add(pOff);
                        }
                    }
                } else {
                    Potential p = pendingOff.remove(0);
                    Set<Potential> makeOn = getOffToOn(grid, p, saveGrid, toOff,
                            !isNisho, true);
                    if (isDynamic)
                        p.off();
                    for (Potential pOn : makeOn) {
                        Potential pOff = new Potential(pOn.cell, pOn.value, false);
                        if (toOff.contains(pOff)) {
                            pOff = toOff.get(pOff);
                            return new Potential[] {pOn, pOff};
                        } else if (!toOn.contains(pOn)) {
                            toOn.add(pOn);
                            pendingOn.add(pOn);
                        }
                    }
                }
                if (pendingOn.isEmpty() && pendingOff.isEmpty() && level > 0) {
                    for (Potential pOff : getAdvancedPotentials(grid, saveGrid, toOff)) {
                        if (!toOff.contains(pOff)) {
                            toOff.add(pOff);
                            pendingOff.add(pOff);
                        }
                    }
                }
            }
            return null;
        } finally {
            saveGrid.copyTo(grid);
        }
    }

    /**
     * Get all non-trivial implications (involving fished, naked/hidden sets, etc).
     */
    private Collection<Potential> getAdvancedPotentials(final Grid grid, final Grid source,
            final LinkedSet<Potential> offPotentials) {
        final Collection<Potential> result = new ArrayList<Potential>();
        if (otherRules == null) {
            otherRules = new ArrayList<IndirectHintProducer>();
            otherRules.add(new Locking(false));
            otherRules.add(new HiddenSet(2, false));
            otherRules.add(new NakedSet(2));
            otherRules.add(new Fisherman(2));
            if (level < 4) {
                if (level >= 2)
                    otherRules.add(new Chaining(false, false, false, 0, false, 0));
                if (level >= 3)
                    otherRules.add(new Chaining(true, false, false, 0, false, 0));
            } else {
                otherRules.add(new Chaining(true, true, false, nestingLimit, false, 0));
            }
        }
        int index = 0;
        while (result.isEmpty() && index < otherRules.size()) {
            IndirectHintProducer rule = otherRules.get(index);
            try {
                rule.getHints(grid, new HintsAccumulator() {
                    public void add(Hint hint0) {
                        IndirectHint hint = (IndirectHint)hint0;
                        Collection<Potential> parents =
                            ((HasParentPotentialHint)hint).getRuleParents(source, grid);
                        /*
                         * If no parent can be found, the rule probably already exists without
                         * the chain. Therefore it is useless to include it in the chain.
                         */
                        if (!parents.isEmpty()) {
                            ChainingHint nested = null;
                            if (hint instanceof ChainingHint)
                                nested = (ChainingHint)hint;
                            Map<Cell,BitSet> removable = hint.getRemovablePotentials();
                            List<Cell> sortedRemKeys=new ArrayList<Cell>(removable.keySet());
                            Collections.sort(sortedRemKeys, new Comparator<Cell>() {
                                public int compare(Cell c1, Cell c2) {
                                    int y1 = c1.getY();
                                    int y2 = c2.getY();
                                    if (y1 != y2) return y1 - y2;
                                    int x1 = c1.getX();
                                    int x2 = c2.getX();
                                    if (x1 != x2) return x1 - x2;
                                    return removable.get(c1).nextSetBit(0) - removable.get(c2).nextSetBit(0);
                                }
                            });
                            for (Cell cell : sortedRemKeys) {
                                BitSet values = removable.get(cell);
                                for (int value = values.nextSetBit(0); value >= 0; value = values.nextSetBit(value+1)) {
                                    Potential toOff = new Potential(cell, value, false, Potential.Cause.Advanced,
                                            "hint.toString()", nested);
                                    for (Potential p : parents) {
                                        Potential real = offPotentials.get(p);
                                        toOff.parents.add(real);
                                    }
                                    result.add(toOff);
                                }
                            }
                        }
                    }
                });
            } catch(InterruptedException ex) {
                ex.printStackTrace();
            }
            index++;
        }
        return result;
    }

    private CycleHint createCycleHint(Grid grid, Potential dstOn, Potential dstOff,
            boolean isYChain, boolean isXChain) {

        Collection<Cell> cells = new LinkedHashSet<Cell>();
        Potential p = dstOn;
        while (!p.parents.isEmpty()) {
            cells.add(p.cell);
            p = p.parents.get(0);
        }

        Collection<Potential> cancelForw = new LinkedHashSet<Potential>();
        Collection<Potential> cancelBack = new LinkedHashSet<Potential>();
        p = dstOn;
        while (!p.parents.isEmpty()) {
            Cell srcCell = grid.getCell(p.cell.getX(), p.cell.getY());
            for (Cell cell : srcCell.getHouseCells()) {
                if (!cells.contains(cell) && cell.hasPotentialValue(p.value)) {
                    if (p.isOn)
                        cancelForw.add(new Potential(cell, p.value, false));
                    else
                        cancelBack.add(new Potential(cell, p.value, false));
                }
            }
            p = p.parents.get(0);
        }

        Collection<Potential> cancel = cancelForw;
        cancel.retainAll(cancelBack);
        Map<Cell,BitSet> removable = new HashMap<Cell,BitSet>();
        for (Potential rp : cancel) {
            BitSet values = removable.get(rp.cell);
            if (values == null)
                removable.put(rp.cell, SingletonBitSet.create(rp.value));
            else
                values.set(rp.value);
        }

        return new CycleHint(this, removable, isYChain, isXChain, dstOn, dstOff);
    }

    private ForcingChainHint createForcingChainHint(Grid grid, Potential target,
            boolean isYChain, boolean isXChain) {

        Map<Cell, BitSet> removable = new HashMap<Cell, BitSet>();
        if (!target.isOn)
            removable.put(target.cell, SingletonBitSet.create(target.value));
        else {
            BitSet values = new BitSet(10);
            for (int value = 1; value <= 9; value++) {
                if (value != target.value && target.cell.hasPotentialValue(value))
                    values.set(value);
            }
            removable.put(target.cell, values);
        }

        return new ForcingChainHint(this, removable, isYChain, isXChain, target);
    }

    private BinaryChainingHint createChainingOnHint(Potential dstOn, Potential dstOff,
            Potential source, Potential target, boolean isAbsurd) {

        Map<Cell,BitSet> cellRemovablePotentials = new HashMap<Cell,BitSet>();
        BitSet removable = (BitSet)target.cell.getPotentialValues().clone();
        removable.set(target.value, false);
        if (!removable.isEmpty())
            cellRemovablePotentials.put(target.cell, removable);

        return new BinaryChainingHint(this, cellRemovablePotentials, source, dstOn, dstOff,
                isAbsurd, isNisho);
    }

    private BinaryChainingHint createChainingOffHint(Potential dstOn, Potential dstOff,
            Potential source, Potential target, boolean isAbsurd) {

        Map<Cell,BitSet> cellRemovablePotentials = new HashMap<Cell,BitSet>();
        cellRemovablePotentials.put(target.cell, SingletonBitSet.create(target.value));

        return new BinaryChainingHint(this, cellRemovablePotentials, source, dstOn, dstOff,
                isAbsurd, isNisho);
    }

    private CellChainingHint createCellReductionHint(Cell srcCell, Potential target,
            Map<Integer, LinkedSet<Potential>> outcomes) {

        Map<Cell,BitSet> cellRemovablePotentials = new HashMap<Cell,BitSet>();
        if (target.isOn) {
            BitSet removable = (BitSet)target.cell.getPotentialValues().clone();
            removable.set(target.value, false);
            if (!removable.isEmpty())
                cellRemovablePotentials.put(target.cell, removable);
        } else {
            cellRemovablePotentials.put(target.cell, SingletonBitSet.create(target.value));
        }

        LinkedHashMap<Integer, Potential> chains = new LinkedHashMap<Integer, Potential>();
        for (int value = 1; value <= 9; value++) {
            if (srcCell.hasPotentialValue(value)) {
                Potential valueTarget = outcomes.get(value).get(target);
                chains.put(value, valueTarget);
            }
        }

        return new CellChainingHint(this, cellRemovablePotentials, srcCell, chains);
    }

    private RegionChainingHint createRegionReductionHint(Grid.Region region, int value,
            Potential target, Map<Integer, LinkedSet<Potential>> outcomes) {

        Map<Cell,BitSet> cellRemovablePotentials = new HashMap<Cell,BitSet>();
        if (target.isOn) {
            BitSet removable = (BitSet)target.cell.getPotentialValues().clone();
            removable.set(target.value, false);
            if (!removable.isEmpty())
                cellRemovablePotentials.put(target.cell, removable);
        } else {
            cellRemovablePotentials.put(target.cell, SingletonBitSet.create(target.value));
        }

        LinkedHashMap<Integer, Potential> chains = new LinkedHashMap<Integer, Potential>();
        BitSet potentialPositions = region.getPotentialPositions(value);
        for (int pos = 0; pos < 9; pos++) {
            if (potentialPositions.get(pos)) {
                Potential posTarget = outcomes.get(pos).get(target);
                chains.put(pos, posTarget);
            }
        }

        return new RegionChainingHint(this, cellRemovablePotentials, region, value, chains);
    }

    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {
        List<ChainingHint> result = getHintList(grid);
        Collection<ChainingHint> lastHints = new LinkedHashSet<ChainingHint>(result);
        for (IndirectHint hint : lastHints)
            accu.add(hint);
    }

}
