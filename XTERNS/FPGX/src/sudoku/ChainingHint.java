/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;
import sudoku.Grid.*;

/**
 * Chaining hint. A chaining hint is any hint involving a chain of implications.
 */
public abstract class ChainingHint extends IndirectHint implements Rule, HasParentPotentialHint {

    protected final boolean isYChain;
    protected final boolean isXChain;

    public ChainingHint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            boolean isYChain, boolean isXChain) {
        super(rule, removablePotentials);
        this.isYChain = isYChain;
        this.isXChain = isXChain;
    }

    Collection<Potential> getChain(Potential target) {
        List<Potential> result = new ArrayList<Potential>();
        Set<Potential> done = new HashSet<Potential>();
        Collection<Potential> todo = new ArrayList<Potential>();
        todo.add(target);
        while (!todo.isEmpty()) {
            Collection<Potential> next = new ArrayList<Potential>();
            for (Potential p : todo) {
                if (!done.contains(p)) {
                    done.add(p);
                    result.add(p);
                    next.addAll(p.parents);
                }
            }
            todo = next;
        }
        return result;
    }

    protected final int getNestedComplexity() {
        int result = 0;
        Set<FullChain> processed = new HashSet<FullChain>();
        for (Potential target : getChainsTargets()) {
            for (Potential p : getChain(target)) {
                if (p.nestedChain != null) {
                    FullChain f = new FullChain(p.nestedChain);
                    if (!processed.contains(f)) {
                        result+= p.nestedChain.getComplexity();
                        processed.add(f);
                    }
                }
            }
        }
        return result;
    }

    private static Class<? extends Region> getCauseRegion(Potential.Cause cause) {
        switch(cause) {
        case HiddenBlock:
            return Block.class;
        case HiddenColumn:
            return Column.class;
        case HiddenRow:
            return Row.class;
        default:
            return null;
        }
    }

    public Collection<Potential> getRuleParents(Grid initialGrid, Grid currentGrid) {
        Collection<Potential> result = new LinkedHashSet<Potential>();
        /*
         * Warning: Iterate on each chain target separately. Reason: they may be equal
         * according to equals() (same candidate), but they may have different parents !
         */
        for (Potential target : getChainsTargets()) {
            collectRuleParents(initialGrid, currentGrid, result, target);
        }
        return result;
    }

    protected void collectRuleParents(Grid initialGrid, Grid currentGrid,
            Collection<Potential> result, Potential target) {
        Set<Potential> done = new HashSet<Potential>();
        Collection<Potential> todo = new ArrayList<Potential>();
        todo.add(target);
        while (!todo.isEmpty()) {
            Collection<Potential> next = new ArrayList<Potential>();
            for (Potential p : todo) {
                if (!done.contains(p)) {
                    done.add(p);
                    Potential.Cause cause = p.cause;
                    if (cause == null) {
                        if (this instanceof CellChainingHint)
                            cause = Potential.Cause.NakedSingle;
                        else if (this instanceof RegionChainingHint)
                            cause = Chaining.getRegionCause(((RegionChainingHint)this).getRegion());
                    }
                    if (p.isOn && cause != null) {
                        Cell curCell = p.cell;
                        if (cause.equals(Potential.Cause.NakedSingle)) {
                            Cell actCell = currentGrid.getCell(curCell.getX(), curCell.getY());
                            Cell initCell = initialGrid.getCell(curCell.getX(), curCell.getY());
                            for (int value = 1; value <= 9; value++) {
                                if (initCell.hasPotentialValue(value) && !actCell.hasPotentialValue(value))
                                    result.add(new Potential(actCell, value, false));
                            }
                        } else {
                            Region r = currentGrid.getRegionAt(getCauseRegion(cause), curCell);
                            for (int i = 0; i < 9; i++) {
                                Cell actCell = r.getCell(i);
                                Cell initCell = initialGrid.getCell(actCell.getX(), actCell.getY());
                                if (initCell.hasPotentialValue(p.value) && !actCell.hasPotentialValue(p.value))
                                    result.add(new Potential(actCell, p.value, false));
                            }
                        }
                    }
                    next.addAll(p.parents);
                }
            }
            todo = next;
        }
    }

    protected Chaining getChainingRule() {
        return (Chaining)super.getRule();
    }

    protected abstract Potential getResult();

    protected abstract Collection<Potential> getChainsTargets();

    @Override
    public Cell getCell() {
        Potential result = getResult();
        if (result != null && result.isOn)
            return result.cell;
        return null;
    }

    @Override
    public int getValue() {
        Potential result = getResult();
        if (result != null && result.isOn)
            return result.value;
        return 0;
    }

    protected double getLengthDifficulty() {
        double added = 0.0;
        int ceil = 4;
        int length = getComplexity() - 2;
        boolean isOdd = false;
        while (length > ceil) {
            added += 0.1;
            if (!isOdd)
                ceil = (ceil * 3) / 2;
            else
                ceil = (ceil * 4) / 3;
            isOdd = !isOdd;
        }
        /*
        final int[] steps = new int[] {4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128,
            192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096, 6144, 8192};
        int length = getComplexity() - 2;
        double added = 0;
        int index = 0;
        while (index < steps.length && length > steps[index]) {
            added += 0.1;
            index++;
        }
         */
        return added;
    }

    protected int getAncestorCount(Potential child) {
        Collection<Potential> ancestors = new HashSet<Potential>();
        Collection<Potential> todo = new ArrayList<Potential>();
        todo.add(child);
        while (!todo.isEmpty()) {
            Collection<Potential> next = new ArrayList<Potential>();
            for (Potential p : todo) {
                if (!ancestors.contains(p)) {
                    ancestors.add(p);
                    next.addAll(p.parents);
                }
            }
            todo = next;
        }
        return ancestors.size();
    }

    public abstract int getFlatComplexity();

    public int getComplexity() {
        return getFlatComplexity() + getNestedComplexity();
    }

    public abstract int getSortKey();

    /**
     * Overriden to prevent a huge number of equivalent chains.
     * Two chaining hints are equal as soon as the removable
     * potentials are the same.
     * <p>
     * This is not dramatic, because we already return the hints
     * sorted by increasing complexity: only more complex hints
     * will be filtered out.
     * <p>
     * The embarassing case we want to prevent with this strategy
     * is when, for a given chain, all chains that have it as a
     * "suffix" are also returned. This strategy also ensures that,
     * for instance, only chains that are dynamic are actually
     * classified in the dynamic group (static chains detected
     * by the dynamic algorithm will be equal to a previously
     * detected chain, and will not be added).
     * <p>
     * This is not the filter from the GUI. The latter further filters
     * hints of different categories.
     */
    @Override
    public boolean equals(Object o) {
        if (!(o instanceof ChainingHint))
            return false;
        ChainingHint other = (ChainingHint)o;
        return this.getRemovablePotentials().equals(other.getRemovablePotentials());
    }

    @Override
    public int hashCode() {
        return getRemovablePotentials().hashCode();
    }

}
