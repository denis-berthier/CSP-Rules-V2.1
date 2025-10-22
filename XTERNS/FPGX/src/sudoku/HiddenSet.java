/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Implementation of hidden set solving techniques
 * (Hidden Pair, Hidden Triplet, Hidden Quad).
 * <p>
 * Only used for degree 2 and below. Degree 1 (hidden single)
 * is implemented in {@link diuf.sudoku.solver.rules.HiddenSingle}.
 */
public class HiddenSet implements IndirectHintProducer {

    private final int degree;
    private final boolean isDirect;

    public HiddenSet(int degree, boolean isDirect) {
        this.degree = degree;
        this.isDirect = isDirect;
    }

    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {
        getHints(grid, Grid.Block.class, accu);
        getHints(grid, Grid.Column.class, accu);
        getHints(grid, Grid.Row.class, accu);
    }

    /**
     * For each parts of the given type, check if a n-tuple of cells have
     * a common n-tuple of potential values, and no other potential value.
     * @param regionType the type of the parts to check
     * @param degree the degree of the tuples to search
     */
    private <T extends Grid.Region> void getHints(Grid grid, Class<T> regionType,
            HintsAccumulator accu) throws InterruptedException {
        Grid.Region[] regions = grid.getRegions(regionType);
        for (Grid.Region region : regions) {
            int nbEmptyCells = region.getEmptyCellCount();
            if (nbEmptyCells > degree * 2 || (isDirect && nbEmptyCells > degree)) {
                Permutations perm = new Permutations(degree, 9);
                while (perm.hasNext()) {
                    int[] values = perm.nextBitNums();

                    for (int i = 0; i < values.length; i++)
                        values[i] += 1;

                    BitSet[] potentialIndexes = new BitSet[degree];
                    for (int i = 0; i < degree; i++)
                        potentialIndexes[i] = region.getPotentialPositions(values[i]);

                    BitSet commonPotentialPositions =
                        CommonTuples.searchCommonTuple(potentialIndexes, degree);
                    if (commonPotentialPositions != null) {
                        IndirectHint hint = createHiddenSetHint(region, values, commonPotentialPositions);
                        if (hint != null && hint.isWorth())
                            accu.add(hint);
                    }
                }
            }
        }
    }

    private IndirectHint createHiddenSetHint(Grid.Region region, int[] values,
            BitSet commonPotentialPositions) {
        BitSet valueSet = new BitSet(10);
        for (int i = 0; i < values.length; i++)
            valueSet.set(values[i], true);

        Cell[] cells = new Cell[degree];
        int dstIndex = 0;
        Map<Cell,BitSet> cellPValues = new LinkedHashMap<Cell,BitSet>();
        Map<Cell,BitSet> cellRemovePValues = new HashMap<Cell,BitSet>();
        for (int index = 0; index < 9; index++) {
            Cell cell = region.getCell(index);
            if (commonPotentialPositions.get(index)) {
                cellPValues.put(cell, valueSet);
                BitSet removablePotentials = new BitSet(10);
                for (int value = 1; value <= 9; value++) {
                    if (!valueSet.get(value) && cell.hasPotentialValue(value))
                        removablePotentials.set(value);
                }
                if (!removablePotentials.isEmpty())
                    cellRemovePValues.put(cell, removablePotentials);
                cells[dstIndex++] = cell;
            }
        }
        if (isDirect) {
            for (int value = 1; value <= 9; value++) {
                if (!valueSet.get(value)) {
                    BitSet positions = region.copyPotentialPositions(value);
                    if (positions.cardinality() > 1) {
                        positions.andNot(commonPotentialPositions);
                        if (positions.cardinality() == 1) {
                            int index = positions.nextSetBit(0);
                            Cell cell = region.getCell(index);
                            return new DirectHiddenSetHint(this, cells, values, cellPValues,
                                    cellRemovePValues, region, cell, value);
                        }
                    }
                }
            }
            return null;
        } else {
            return new HiddenSetHint(this, cells, values,
                    cellPValues, cellRemovePValues, region);
        }
    }

}
