/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Implementation of the Bivalue Universal Grave solving technique.
 * Supports types 1 to 4.
 */
public class BivalueUniversalGrave implements IndirectHintProducer {

    private final Grid temp = new Grid();

    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {
        grid.copyTo(temp);
        List<Cell> bugCells = new ArrayList<Cell>();
        Map<Cell, BitSet> bugValues = new HashMap<Cell, BitSet>();
        BitSet allBugValues = new BitSet(10);
        Set<Cell> commonCells = null;
        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            Grid.Region[] regions = grid.getRegions(regionType);
            for (int i = 0; i < regions.length; i++) {
                Grid.Region region = regions[i];
                for (int value = 1; value <= 9; value++) {
                    BitSet positions = region.getPotentialPositions(value);
                    int cardinality = positions.cardinality();
                    if (cardinality != 0 && cardinality != 2) {
                        List<Cell> newBugCells = new ArrayList<Cell>();
                        for (int index = positions.nextSetBit(0); index >= 0;
                                index = positions.nextSetBit(index + 1)) {
                            Cell cell = region.getCell(index);
                            int cellCardinality = cell.getPotentialValues().cardinality();
                            if (cellCardinality >= 3)
                                newBugCells.add(cell);
                        }
                        /*
                         * If there are two or more positions falling in a bug cell, we cannot
                         * decide which one is the buggy one. Just do nothing because another
                         * region will capture the correct cell.
                         */
                        if (newBugCells.size() == 1) {
                            Cell cell = newBugCells.get(0);
                            if (!bugCells.contains(cell))
                                bugCells.add(cell);
                            if (!bugValues.containsKey(cell))
                                bugValues.put(cell, new BitSet(10));
                            bugValues.get(cell).set(value);
                            allBugValues.set(value);
                            Cell twin = temp.getCell(cell.getX(), cell.getY());
                            twin.removePotentialValue(value);
                            if (commonCells == null)
                                commonCells = new LinkedHashSet<Cell>(cell.getHouseCells());
                            else
                                commonCells.retainAll(cell.getHouseCells());
                            commonCells.removeAll(bugCells);
                            if (bugCells.size() > 1 && allBugValues.cardinality() > 1
                                    && commonCells.isEmpty())
                                return;
                        }
                        if (newBugCells.isEmpty())
                            return;
                    }
                }
            }
        }

        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = temp.getCell(x, y);
                if (cell.getValue() == 0 && cell.getPotentialValues().cardinality() != 2)
                    return;
            }
        }
        for (Class<? extends Grid.Region> regionType : temp.getRegionTypes()) {
            Grid.Region[] regions = temp.getRegions(regionType);
            for (int i = 0; i < regions.length; i++) {
                Grid.Region region = regions[i];
                for (int value = 1; value <= 9; value++) {
                    BitSet positions = region.getPotentialPositions(value);
                    int cardinality = positions.cardinality();
                    if (cardinality != 0 && cardinality != 2)
                        return;
                }
            }
        }

        if (bugCells.size() == 1) {
            addBug1Hint(accu, bugCells, allBugValues);
        } else if (allBugValues.cardinality() == 1) {
            addBug2Hint(accu, bugCells, allBugValues, commonCells);
            if (bugCells.size() == 2)
                addBug4Hint(accu, bugCells, bugValues, allBugValues, commonCells, grid);
        } else if (commonCells != null && !commonCells.isEmpty()) {
            if (bugCells.size() == 2)
                addBug4Hint(accu, bugCells, bugValues, allBugValues, commonCells, grid);
            addBug3Hint(accu, bugCells, bugValues, allBugValues, commonCells, grid);
        }
    }

    private void addBug1Hint(HintsAccumulator accu, List<Cell> bugCells, BitSet extraValues) throws InterruptedException {
        Cell bugCell = bugCells.get(0);
        Map<Cell, BitSet> removablePotentials = new HashMap<Cell, BitSet>();
        BitSet removable = (BitSet)bugCell.getPotentialValues().clone();
        removable.andNot(extraValues);
        removablePotentials.put(bugCell, removable);
        IndirectHint hint = new Bug1Hint(this, removablePotentials, bugCell, extraValues);
        accu.add(hint);
    }

    private void addBug2Hint(HintsAccumulator accu, List<Cell> bugCells, BitSet extraValues,
            Set<Cell> commonCells) throws InterruptedException {
        int value = extraValues.nextSetBit(0);
        if (commonCells != null && !commonCells.isEmpty()) {
            Map<Cell, BitSet> removablePotentials = new HashMap<Cell, BitSet>();
            for (Cell cell : commonCells) {
                if (cell.hasPotentialValue(value))
                    removablePotentials.put(cell, SingletonBitSet.create(value));
            }
            if (!removablePotentials.isEmpty()) {
                Cell[] arrCells = new Cell[bugCells.size()];
                bugCells.toArray(arrCells);
                IndirectHint hint = new Bug2Hint(this, removablePotentials, arrCells, value);
                accu.add(hint);
            }
        }
    }

    private void addBug3Hint(HintsAccumulator accu, List<Cell> bugCells,
            Map<Cell, BitSet> extraValues, BitSet allExtraValues, Set<Cell> commonCells,
            Grid grid) throws InterruptedException {
        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            Grid.Region region = null;
            for (Cell cell : bugCells) {
                Grid.Region cellRegion = grid.getRegionAt(regionType, cell.getX(), cell.getY());
                if (region == null) {
                    region = cellRegion;
                } else if (!region.equals(cellRegion)) {
                    region = null;
                    break;
                }
            }
            if (region != null) {
                List<Cell> regionCells = new ArrayList<Cell>();
                for (Cell cell : commonCells) {
                    if (region.equals(grid.getRegionAt(regionType, cell)))
                        regionCells.add(cell);
                }
                for (int degree = 2; degree <= 6; degree++) {
                    if (regionCells.size() >= degree) {
                        Permutations perm = new Permutations(degree - 1, regionCells.size());
                        while (perm.hasNext()) {
                            BitSet[] potentials = new BitSet[degree];
                            Cell[] nakedCells = new Cell[degree - 1];
                            BitSet otherCommon = new BitSet(10);
                            int[] indexes = perm.nextBitNums();
                            for (int i = 0; i < indexes.length; i++) {
                                Cell cell = regionCells.get(indexes[i]);
                                nakedCells[i] = cell;
                                BitSet potential = cell.getPotentialValues();
                                potentials[i] = potential;
                                otherCommon.or(potential);
                            }
                            potentials[degree - 1] = allExtraValues;
                            if (otherCommon.cardinality() == degree) {
                                BitSet nakedSet = CommonTuples.searchCommonTuple(potentials, degree);
                                if (nakedSet != null) {
                                    Set<Cell> erasable = new HashSet<Cell>(regionCells);
                                    for (Cell cell : nakedCells)
                                        erasable.remove(cell);
                                    erasable.removeAll(bugCells);
                                    if (!erasable.isEmpty()) {
                                        Map<Cell, BitSet> removablePotentials = new HashMap<Cell, BitSet>();
                                        for (Cell cell : erasable) {
                                            BitSet removable = (BitSet)cell.getPotentialValues().clone();
                                            removable.and(nakedSet);
                                            if (!removable.isEmpty())
                                                removablePotentials.put(cell, removable);
                                        }
                                        if (!removablePotentials.isEmpty()) {
                                            Cell[] arrCells = new Cell[bugCells.size()];
                                            bugCells.toArray(arrCells);
                                            IndirectHint hint = new Bug3Hint(this, removablePotentials, arrCells,
                                                    nakedCells, extraValues, allExtraValues, nakedSet, region);
                                            accu.add(hint);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void addBug4Hint(HintsAccumulator accu, List<Cell> bugCells,
            Map<Cell, BitSet> extraValues, BitSet allExtraValues, Set<Cell> commonCells,
            Grid grid) throws InterruptedException {
        Cell c1 = bugCells.get(0);
        Cell c2 = bugCells.get(1);
        BitSet common = new BitSet(10);
        common.or(c1.getPotentialValues());
        common.and(c2.getPotentialValues());
        common.andNot(allExtraValues);
        if (common.cardinality() != 1)
            return;

        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            Grid.Region region = null;
            for (Cell cell : bugCells) {
                Grid.Region cellRegion = grid.getRegionAt(regionType, cell.getX(), cell.getY());
                if (region == null) {
                    region = cellRegion;
                } else if (!region.equals(cellRegion)) {
                    region = null;
                    break;
                }
            }
            if (region != null) {
                int value = common.nextSetBit(0);
                Map<Cell, BitSet> removablePotentials = new HashMap<Cell, BitSet>();
                BitSet b1 = (BitSet)c1.getPotentialValues().clone();
                b1.andNot(extraValues.get(c1));
                b1.clear(value);
                removablePotentials.put(c1, b1);
                BitSet b2 = (BitSet)c2.getPotentialValues().clone();
                b2.andNot(extraValues.get(c2));
                b2.clear(value);
                removablePotentials.put(c2, b2);
                IndirectHint hint = new Bug4Hint(this, removablePotentials, c1, c2, extraValues,
                        allExtraValues, value, region);
                accu.add(hint);
            }
        }
    }

}
