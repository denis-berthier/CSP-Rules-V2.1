/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class AlignedPairExclusion extends AlignedExclusion {

    public AlignedPairExclusion() {
        super(2);
    }

    @Override
    public void getHints(Grid grid, HintsAccumulator accu)
    throws InterruptedException {

        /*
         * Search for "base" cells that can participate to a exclusion set. For each
         * candidate, collect the potentially excluding cells.
         */
        List<Cell> candidateList = new ArrayList<Cell>();
        Map<Cell, Collection<Cell>> cellExcluders = new LinkedHashMap<Cell, Collection<Cell>>();
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = grid.getCell(x, y);
                if (cell.getPotentialValues().cardinality() >= 2) {
                    boolean hasNakedSingle = false;
                    Collection<Cell> excludingCells = new ArrayList<Cell>();
                    for (Cell excludingCell : cell.getHouseCells()) {
                        int exclCardinality = excludingCell.getPotentialValues().cardinality();
                        if (exclCardinality == 1)
                            hasNakedSingle = true;
                        else if (exclCardinality == 2)
                            excludingCells.add(excludingCell);
                    }
                    if (!hasNakedSingle && !excludingCells.isEmpty()) {
                        candidateList.add(cell);
                        cellExcluders.put(cell, excludingCells);
                    }
                }
            }
        }

        if (cellExcluders.size() < 2)
            return;

        /*
         * Iterate on all permutations of 'degree' cells among the possible base
         * cells
         */
        Permutations cellSetPerm2 = new Permutations(2, cellExcluders.size());
        while (cellSetPerm2.hasNext()) {
            int[] indexes = cellSetPerm2.nextBitNums();
            Cell[] cells = new Cell[2];
            int[] cardinalities = new int[2];
            cells[0] = candidateList.get(indexes[0]);
            cardinalities[0] = cells[0].getPotentialValues().cardinality();
            cells[1] = candidateList.get(indexes[1]);
            cardinalities[1] = cells[1].getPotentialValues().cardinality();

            Set<Cell> commonExcluders = new LinkedHashSet<Cell>();
            commonExcluders.addAll(cellExcluders.get(cells[0]));
            commonExcluders.retainAll(cellExcluders.get(cells[1]));

            if (commonExcluders.size() >= 2) {
                Map<Cell, BitSet> removablePotentials = new HashMap<Cell, BitSet>();

                List<int[]> allowedPotentialCombinations = new ArrayList<int[]>();
                Map<int[], Cell> lockedPotentialCombinations = new LinkedHashMap<int[], Cell>();
                BitSet v0 = cells[0].getPotentialValues();
                BitSet v1 = cells[1].getPotentialValues();

                for (int pt0 = v0.nextSetBit(0); pt0 >= 0; pt0 = v0.nextSetBit(pt0 + 1)) {
                    for (int pt1 = v1.nextSetBit(0); pt1 >= 0; pt1 = v1.nextSetBit(pt1 + 1)) {
                        int[] potentials = new int[2];
                        potentials[0] = pt0;
                        potentials[1] = pt1;
                        boolean isAllowed = true;
                        Cell lockingCell = null;

                        if (pt0 == pt1 && cells[0].getHouseCells().contains(cells[1]))
                            isAllowed = false;

                        if (isAllowed) {
                            for (Cell excludingCell : commonExcluders) {
                                BitSet values = (BitSet)excludingCell.getPotentialValues().clone();
                                for (int i = 0; i < 2; i++)
                                    values.clear(potentials[i]);
                                if (values.isEmpty()) {
                                    lockingCell = excludingCell;
                                    isAllowed = false;
                                    break;
                                }
                            }
                        }

                        if (isAllowed)
                            allowedPotentialCombinations.add(potentials);
                        else
                            lockedPotentialCombinations.put(potentials, lockingCell);
                    }
                }

                /*
                 * For all potentials of all base cells, test if the value is possible
                 * in at least one allowed combination
                 */
                for (int i = 0; i < 2; i++) {
                    Cell cell = cells[i];
                    BitSet values = cell.getPotentialValues();
                    for (int p = values.nextSetBit(0); p >= 0; p = values.nextSetBit(p + 1)) {
                        boolean isValueAllowed = false;
                        for (int[] combinations : allowedPotentialCombinations) {
                            if (combinations[i] == p) {
                                isValueAllowed = true;
                            }
                        }
                        if (!isValueAllowed) {
                            if (removablePotentials.containsKey(cell))
                                removablePotentials.get(cell).set(p);
                            else
                                removablePotentials.put(cell, SingletonBitSet.create(p));
                        }
                    }
                }

                IndirectHint hint = new AlignedExclusionHint(this, removablePotentials,
                        cells, lockedPotentialCombinations);
                if (hint.isWorth())
                    accu.add(hint);
            }
        }

    }

}
