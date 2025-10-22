/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Implementation of the Unique Rectangle/Loops solving techniques.
 * Support types 1-4.
 * Skewed (non-orthogonal) loops (very rare) are also detected.
 */
public class UniqueLoops implements IndirectHintProducer {

    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {
        List<UniqueLoopHint> hints;
        hints = getHints(grid);
        Collections.sort(hints, new Comparator<UniqueLoopHint>() {
            public int compare(UniqueLoopHint h1, UniqueLoopHint h2) {
                double d1 = h1.getDifficulty();
                double d2 = h2.getDifficulty();
                if (d1 < d2) return -1;
                if (d1 > d2) return 1;
                return h1.getType() - h2.getType();
            }
        });
        for (UniqueLoopHint hint : hints)
            accu.add(hint);
    }

    private List<UniqueLoopHint> getHints(Grid grid) {
        List<UniqueLoopHint> result = new ArrayList<UniqueLoopHint>();
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = grid.getCell(x, y);
                BitSet potentials = cell.getPotentialValues();
                if (potentials.cardinality() == 2) {
                    int v1 = potentials.nextSetBit(0);
                    int v2 = potentials.nextSetBit(v1 + 1);
                    List<Cell> tempLoop = new ArrayList<Cell>();
                    Collection<List<Cell>> results = new ArrayList<List<Cell>>();
                    checkForLoops(grid, cell, v1, v2, tempLoop, 2, new BitSet(10), null, results);
                    for (List<Cell> loop : results) {
                        if (isValidLoop(grid, loop)) {
                            List<Cell> extraCells = new ArrayList<Cell>(2);
                            for (Cell loopCell : loop) {
                                if (loopCell.getPotentialValues().cardinality() > 2)
                                    extraCells.add(loopCell);
                            }
                            if (extraCells.size() == 1) {
                                UniqueLoopHint hint = createType1Hint(loop, extraCells.get(0), v1, v2);
                                if (!result.contains(hint) && hint.isWorth())
                                    result.add(hint);
                            } else if (extraCells.size() > 2) {
                                BitSet extraValues = new BitSet(10);
                                for (Cell c : extraCells)
                                    extraValues.or(c.getPotentialValues());
                                extraValues.clear(v1);
                                extraValues.clear(v2);
                                UniqueLoopHint hint = createType2Hint(grid, loop, extraCells, v1, v2);
                                if (!result.contains(hint) && hint.isWorth())
                                    result.add(hint);
                            } else if (extraCells.size() == 2) {
                                Cell r1 = extraCells.get(0);
                                Cell r2 = extraCells.get(1);
                                BitSet rPotentials = (BitSet)r1.getPotentialValues().clone();
                                rPotentials.or(r2.getPotentialValues());
                                rPotentials.clear(v1);
                                rPotentials.clear(v2);
                                if (rPotentials.cardinality() == 1) {
                                    UniqueLoopHint hint = createType2Hint(grid, loop, extraCells, v1, v2);
                                    if (!result.contains(hint) && hint.isWorth())
                                        result.add(hint);
                                } else if (rPotentials.cardinality() >= 2) {
                                    Collection<UniqueLoopHint> hints = createType3Hints(grid, loop, r1, r2, v1, v2);
                                    for (UniqueLoopHint hint : hints) {
                                        if (!result.contains(hint) && hint.isWorth())
                                            result.add(hint);
                                    }
                                }
                                UniqueLoopHint hint = createType4Hint(grid, loop, r1, r2, v1, v2);
                                if (hint != null && !result.contains(hint) && hint.isWorth())
                                    result.add(hint);
                            } else {
                            }
                        }
                    }
                }
            }
        }
        return result;
    }

    /**
     * Check for potential loops with the given start and next cell.
     * @param grid the grid to search the loop in
     * @param cell the next cell of the loop
     * @param v1 the first potential value that all cells of the loop must have
     * @param v2 the 2nd potential value that all cells of the loop must have
     * @param loop the start of the loop
     * @param allowedEx the remaining number of allowed cells with more than two
     * potential values in the loop.
     * @param exValues the extra values in the current loop
     * @param lastRegionType the region type shared by the last two cells.
     * This region type can be skipped for the next cell. Might by <tt>null</tt>.
     * @param results the collection to fill with all loops found
     * @throws InterruptedException
     */
    private void checkForLoops(Grid grid, Cell cell, int v1, int v2,
            List<Cell> loop, int allowedEx, BitSet exValues,
            Class<? extends Grid.Region> lastRegionType, Collection<List<Cell>> results) {
        loop.add(cell);
        exValues = (BitSet)exValues.clone();
        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            if (!regionType.equals(lastRegionType)) {
                Grid.Region region = grid.getRegionAt(regionType, cell.getX(), cell.getY());
                for (int i = 0; i < 9; i++) {
                    Cell next = region.getCell(i);
                    if (loop.get(0).equals(next) && loop.size() >= 4) {
                        results.add(new ArrayList<Cell>(loop));
                    } else if (!loop.contains(next)) {
                        BitSet potentials = next.getPotentialValues();
                        if (potentials.get(v1) && potentials.get(v2)) {
                            exValues.or(potentials);
                            exValues.clear(v1);
                            exValues.clear(v2);
                            int cardinality = potentials.cardinality();
                            /*
                             * We can continue if
                             * (1) The cell has exactly the two values of the loop
                             * (2) The cell has one extra value, the same as all previous cells with
                             * an extra value (for type 2 only)
                             * (3) The cell has extra values and the maximum number of cells with
                             * extra values, 2, is not reached
                             */
                            if (cardinality == 2 || exValues.cardinality() == 1 || allowedEx > 0) {
                                int newAllowedEx = allowedEx;
                                if (cardinality > 2)
                                    newAllowedEx -= 1;
                                checkForLoops(grid, next, v1, v2, loop, newAllowedEx, exValues,
                                        regionType, results);
                            }
                        }
                    }
                }
            }
        }
        loop.remove(loop.size() - 1);
    }

    /**
     * Check if the given list of cells is a candidate for a unique loop.
     * <p>
     * The cells are already checked to all have the same two potentials
     * (with at most two exceptions that can have more potentials).
     * <p>
     * This methods checks that every regions visited by a cell of the loop are
     * visited exactly by two cells, and those two cells have an index of different
     * parity.
     * @param grid the grid
     * @param loop the cells of the loop
     * @return whether the given loop is a candidate for a unique loop
     */
    private boolean isValidLoop(Grid grid, List<Cell> loop) {
        HashSet<Grid.Region> visitedOdd = new HashSet<Grid.Region>();
        HashSet<Grid.Region> visitedEven = new HashSet<Grid.Region>();
        boolean isOdd = false;
        for (Cell cell : loop) {
            for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
                Grid.Region region = grid.getRegionAt(regionType, cell.getX(), cell.getY());
                if (isOdd) {
                    if (visitedOdd.contains(region))
                        return false;
                    else
                        visitedOdd.add(region);
                } else {
                    if (visitedEven.contains(region))
                        return false;
                    else
                        visitedEven.add(region);
                }
            }
            isOdd = !isOdd;
        }
        return visitedOdd.equals(visitedEven);
    }

    private UniqueLoopHint createType1Hint(List<Cell> loop, Cell rescueCell,
            int v1, int v2) {
        Map<Cell, BitSet> removable = new HashMap<Cell, BitSet>();
        BitSet values = new BitSet(10);
        values.set(v1);
        values.set(v2);
        removable.put(rescueCell, values);
        UniqueLoopType1Hint hint = new UniqueLoopType1Hint(this, loop, v1, v2, removable,
                rescueCell);
        return hint;
    }

    private UniqueLoopHint createType2Hint(Grid grid, List<Cell> loop, List<Cell> extraCells,
            int v1, int v2) {
        BitSet common = (BitSet)extraCells.get(0).getPotentialValues().clone();
        common.clear(v1);
        common.clear(v2);
        int value = common.nextSetBit(0);
        Map<Cell, BitSet> removable = new HashMap<Cell, BitSet>();
        Set<Cell> commonCells = null;
        for (Cell extraCell : extraCells) {
            if (commonCells == null)
                commonCells = new LinkedHashSet<Cell>(extraCell.getHouseCells());
            else
                commonCells.retainAll(extraCell.getHouseCells());
        }
        for (Cell cell : commonCells) {
            if (!extraCells.contains(cell)) {
                if (cell.hasPotentialValue(value))
                    removable.put(cell, SingletonBitSet.create(value));
            }
        }
        Cell[] cells = new Cell[extraCells.size()];
        extraCells.toArray(cells);
        return new UniqueLoopType2Hint(this, loop, v1, v2, removable, cells, value);
    }

    private boolean containsFirst(int[] indexes, int index1, int index2) {
        boolean contains1 = false;
        for (int i = 0; i < indexes.length; i++) {
            if (indexes[i] == index1)
                contains1 = true;
            else if (indexes[i] == index2)
                return false;
        }
        return contains1;
    }

    private Collection<UniqueLoopHint> createType3Hints(Grid grid, List<Cell> loop,
            Cell c1, Cell c2, int v1, int v2) {
        Collection<UniqueLoopHint> result = new ArrayList<UniqueLoopHint>();
        BitSet extra = (BitSet)c1.getPotentialValues().clone();
        extra.or(c2.getPotentialValues());
        extra.clear(v1);
        extra.clear(v2);
        for (int degree = extra.cardinality(); degree <= 7; degree++) {
            for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
                Grid.Region region = grid.getRegionAt(regionType, c1);
                if (region.equals(grid.getRegionAt(regionType, c2))) {
                    int nbEmptyCells = region.getEmptyCellCount();
                    int index1 = region.indexOf(c1);
                    int index2 = region.indexOf(c2);

                    if (degree * 2 <= nbEmptyCells) {
                        Permutations perm2 = new Permutations(degree, 9);
                        while (perm2.hasNext()) {
                            int[] indexes = perm2.nextBitNums();
                            if (containsFirst(indexes, index1, index2)) {
                                BitSet[] potentials = new BitSet[degree];
                                BitSet nakedSet = (BitSet)extra.clone();
                                nakedSet.and(c1.getPotentialValues());
                                nakedSet.and(c2.getPotentialValues());

                                Cell[] otherCells = new Cell[degree - 1];
                                int otherIndex = 0;
                                for (int i = 0; i < indexes.length; i++) {
                                    if (indexes[i] == index1)
                                        potentials[i] = extra;
                                    else {
                                        Cell cell = region.getCell(indexes[i]);
                                        potentials[i] = cell.getPotentialValues();
                                        nakedSet.or(potentials[i]);
                                        otherCells[otherIndex++] = cell;
                                    }
                                }
                                if (nakedSet.cardinality() == degree) {
                                    BitSet commonPotentialValues =
                                        CommonTuples.searchCommonTuple(potentials, degree);
                                    if (commonPotentialValues != null) {
                                        UniqueLoopHint hint = createType3NakedHint(loop, v1, v2, extra, region, c1, c2,
                                                otherCells, commonPotentialValues);
                                        if (hint.isWorth())
                                            result.add(hint);
                                    }
                                }
                            }
                        }
                    }

                    if (degree * 2 < nbEmptyCells) {
                        int[] remValues = new int[7 - extra.cardinality()];
                        for (int value = 1, dstIndex = 0; value <= 9; value++) {
                            if (value != v1 && value != v2 && !extra.get(value))
                                remValues[dstIndex++] = value;
                        }
                        if (degree - 2 <= remValues.length) {
                            Permutations perm1 = new Permutations(degree - 2, remValues.length);
                            while (perm1.hasNext()) {
                                int[] pValues = perm1.nextBitNums();
                                int[] values = new int[degree];
                                for (int i = 0; i < pValues.length; i++)
                                    values[i] = remValues[pValues[i]];
                                values[degree - 2] = v1;
                                values[degree - 1] = v2;
                                BitSet[] potentialIndexes = new BitSet[degree];
                                for (int i = 0; i < degree; i++) {
                                    potentialIndexes[i] = region.copyPotentialPositions(values[i]);
                                    potentialIndexes[i].clear(index2);
                                }
                                BitSet commonPotentialPositions =
                                    CommonTuples.searchCommonTupleLight(potentialIndexes, degree);
                                if (commonPotentialPositions != null) {
                                    BitSet hiddenValues = new BitSet(10);
                                    for (int i = 0; i < values.length; i++)
                                        hiddenValues.set(values[i]);
                                    UniqueLoopHint hint = createType3HiddenHint(loop, v1, v2, extra, hiddenValues, region,
                                            c1, c2, commonPotentialPositions);
                                    if (hint.isWorth())
                                        result.add(hint);
                                }
                            }
                        }
                    }

                }
            }
        }
        return result;
    }

    private UniqueLoopHint createType3HiddenHint(List<Cell> loop, int v1, int v2,
            BitSet otherValues, BitSet hiddenValues,
            Grid.Region region, Cell c1, Cell c2, BitSet potentialIndexes) {
        int[] oValues = new int[otherValues.cardinality()];
        int dstIndex = 0;
        for (int value = 1; value <= 9; value++) {
            if (otherValues.get(value))
                oValues[dstIndex++] = value;
        }
        int index1 = region.indexOf(c1);
        int index2 = region.indexOf(c2);
        potentialIndexes.clear(index1);
        potentialIndexes.clear(index2);
        Map<Cell, BitSet> removable = new HashMap<Cell, BitSet>();
        for (int i = 0; i < 9; i++) {
            if (potentialIndexes.get(i)) {
                Cell cell = region.getCell(i);
                if (!cell.equals(c1) && !cell.equals(c2)) {
                    BitSet values = new BitSet(10);
                    for (int value = 1; value <= 9; value++) {
                        if (!hiddenValues.get(value) && cell.hasPotentialValue(value)) {
                            values.set(value);
                        }
                    }
                    if (!values.isEmpty())
                        removable.put(cell, values);
                }
            }
        }
        int[] indexes = new int[potentialIndexes.cardinality()];
        for (int i = 0, j = 0; i < 9; i++) {
            if (potentialIndexes.get(i))
                indexes[j++] = i;
        }
        return new UniqueLoopType3HiddenHint(this, loop, v1, v2, removable, c1, c2, oValues, hiddenValues,
                region, indexes);
    }

    private UniqueLoopHint createType3NakedHint(List<Cell> loop, int v1, int v2, BitSet otherValues,
            Grid.Region region, Cell c1, Cell c2, Cell[] cells, BitSet commonPotentialValues) {
        int[] oValues = new int[otherValues.cardinality()];
        int dstIndex = 0;
        for (int value = 1; value <= 9; value++) {
            if (otherValues.get(value))
                oValues[dstIndex++] = value;
        }
        int[] nValues = new int[commonPotentialValues.cardinality()];
        dstIndex = 0;
        for (int value = 1; value <= 9; value++) {
            if (commonPotentialValues.get(value))
                nValues[dstIndex++] = value;
        }
        Map<Cell,BitSet> removable = new HashMap<Cell,BitSet>();
        for (int i = 0; i < 9; i++) {
            Cell otherCell = region.getCell(i);
            if (!Arrays.asList(cells).contains(otherCell)
                    && !c1.equals(otherCell) && !c2.equals(otherCell)) {
                BitSet removablePotentials = new BitSet(10);
                for (int value = 1; value <= 9; value++) {
                    if (commonPotentialValues.get(value) && otherCell.hasPotentialValue(value))
                        removablePotentials.set(value);
                }
                if (!removablePotentials.isEmpty())
                    removable.put(otherCell, removablePotentials);
            }
        }
        return new UniqueLoopType3NakedHint(this, loop, v1, v2, removable, c1, c2,
                oValues, region, cells, nValues);
    }

    private UniqueLoopHint createType4Hint(Grid grid, List<Cell> loop, Cell c1, Cell c2,
            int v1, int v2) {
        Grid.Region r1 = null;
        Grid.Region r2 = null;
        for (Class<? extends Grid.Region> regionType : grid.getRegionTypes()) {
            Grid.Region region = grid.getRegionAt(regionType, c1.getX(), c1.getY());
            if (region.equals(grid.getRegionAt(regionType, c2.getX(), c2.getY()))) {
                boolean hasValue1 = false;
                boolean hasValue2 = false;
                for (int i = 0; i < 9; i++) {
                    Cell cell = region.getCell(i);
                    if (!cell.equals(c1) && !cell.equals(c2)) {
                        if (cell.hasPotentialValue(v1))
                            hasValue1 = true;
                        if (cell.hasPotentialValue(v2))
                            hasValue2 = true;
                    }
                }
                if (!hasValue1)
                    r1 = region;
                if (!hasValue2)
                    r2 = region;
            }
        }
        Grid.Region region = null;
        int lockValue = -1;
        int remValue = -1;
        Map<Cell, BitSet> removable = new HashMap<Cell, BitSet>();
        if (r1 != null) {
            region = r1;
            lockValue = v1;
            remValue = v2;
            removable.put(c1, SingletonBitSet.create(v2));
            removable.put(c2, SingletonBitSet.create(v2));
        } else if (r2 != null) {
            region = r2;
            lockValue = v2;
            remValue = v1;
            removable.put(c1, SingletonBitSet.create(v1));
            removable.put(c2, SingletonBitSet.create(v1));
        }
        if (region != null)
            return new UniqueLoopType4Hint(this, loop, lockValue, remValue, removable,
                    c1, c2, region);
        return null;
    }

}
