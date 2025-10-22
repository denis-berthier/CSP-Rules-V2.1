/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Implementation of Pointing and Claiming solving techniques.
 */
public class Locking implements IndirectHintProducer {

    private final boolean isDirectMode;

    public Locking(boolean isDirectMode) {
        this.isDirectMode = isDirectMode;
    }

    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {
        getHints(grid, Grid.Block.class, Grid.Column.class, accu);
        getHints(grid, Grid.Block.class, Grid.Row.class, accu);
        getHints(grid, Grid.Column.class, Grid.Block.class, accu);
        getHints(grid, Grid.Row.class, Grid.Block.class, accu);
    }

    /**
     * Given two part types, iterate on pairs of parts of both types that
     * are crossing. For each such pair (p1, p2), check if all the potential
     * positions of a value in p1 are also in p2.
     * <p>
     * Note: at least one of the two part type must be a
     * {@link Grid.Block 3x3 square}.
     * @param regionType1 the first part type
     * @param regionType2 the second part type
     */
    private <S extends Grid.Region, T extends Grid.Region> void getHints(
            Grid grid, Class<S> regionType1, Class<T> regionType2,
            HintsAccumulator accu) throws InterruptedException {

        for (int i1 = 0; i1 < 9; i1++) {
            for (int i2 = 0; i2 < 9; i2++) {
                Grid.Region region1 = grid.getRegions(regionType1)[i1];
                Grid.Region region2 = grid.getRegions(regionType2)[i2];
                if (region1.crosses(region2)) {
                    Set<Cell> region2Cells = region2.getCellSet();
                    for (int value = 1; value <= 9; value++) {
                        boolean isInCommonSet = true;
                        BitSet potentialPositions = region1.getPotentialPositions(value);
                        if (potentialPositions.cardinality() > 1) {
                            for (int i = 0; i < 9; i++) {
                                if (potentialPositions.get(i)) {
                                    Cell cell = region1.getCell(i);
                                    if (!region2Cells.contains(cell))
                                        isInCommonSet = false;
                                }
                            }
                            if (isInCommonSet) {
                                if (isDirectMode) {
                                    lookForFollowingHiddenSingles(grid, regionType1, accu, i1,
                                            region1, region2, value);
                                } else {
                                    IndirectHint hint = createLockingHint(region1, region2, null, value);
                                    if (hint.isWorth())
                                        accu.add(hint);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private <S extends Grid.Region> void lookForFollowingHiddenSingles(Grid grid,
            Class<S> regionType1, HintsAccumulator accu, int i1,
            Grid.Region region1, Grid.Region region2, int value) throws InterruptedException {
        for(int i3 = 0; i3 < 9; i3++) {
            if (i3 != i1) {
                Grid.Region region3 = grid.getRegions(regionType1)[i3];
                if (region3.crosses(region2)) {
                    Set<Cell> region2Cells = region2.getCellSet();
                    BitSet potentialPositions3 = region3.getPotentialPositions(value);
                    if (potentialPositions3.cardinality() > 1) {
                        int nbRemainInRegion3 = 0;
                        Cell hcell = null;
                        for (int i = 0; i < 9; i++) {
                            if (potentialPositions3.get(i)) {
                                Cell cell = region3.getCell(i);
                                if (!region2Cells.contains(cell)) {
                                    nbRemainInRegion3++;
                                    hcell = cell;
                                }
                            }
                        }
                        if (nbRemainInRegion3 == 1) {
                            IndirectHint hint = createLockingHint(region1, region2, hcell, value);
                            if (hint.isWorth())
                                accu.add(hint);
                        }
                    }
                }
            }
        }
    }

    private IndirectHint createLockingHint(Grid.Region p1, Grid.Region p2, Cell hcell, int value) {
        Map<Cell,BitSet> cellPotentials = new HashMap<Cell,BitSet>();
        for (int i = 0; i < 9; i++) {
            Cell cell = p1.getCell(i);
            if (cell.hasPotentialValue(value))
                cellPotentials.put(cell, SingletonBitSet.create(value));
        }
        Map<Cell,BitSet> cellRemovablePotentials = new HashMap<Cell,BitSet>();
        List<Cell> highlightedCells = new ArrayList<Cell>();
        Set<Cell> p1Cells = p1.getCellSet();
        for (int i = 0; i < 9; i++) {
            Cell cell = p2.getCell(i);
            if (!p1Cells.contains(cell)) {
                if (cell.hasPotentialValue(value))
                    cellRemovablePotentials.put(cell, SingletonBitSet.create(value));
            } else if (cell.hasPotentialValue(value))
                highlightedCells.add(cell);
        }
        Cell[] cells = new Cell[highlightedCells.size()];
        highlightedCells.toArray(cells);
        if (isDirectMode)
            return new DirectLockingHint(this, cells, hcell, value, cellPotentials,
                    cellRemovablePotentials, p1, p2);
        else
            return new LockingHint(this, cells, value, cellPotentials,
                    cellRemovablePotentials, p1, p2);
    }

}
