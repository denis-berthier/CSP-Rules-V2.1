/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Hidden set hint
 */
public class HiddenSetHint extends IndirectHint implements Rule, HasParentPotentialHint {

    private final Cell[] cells;
    private final int[] values;
    private final Map<Cell, BitSet> highlightPotentials;
    private final Grid.Region region;

    public HiddenSetHint(IndirectHintProducer rule, Cell[] cells,
            int[] values, Map<Cell, BitSet> highlightPotentials,
            Map<Cell, BitSet> removePotentials, Grid.Region region) {
        super(rule, removePotentials);
        this.cells = cells;
        this.values = values;
        this.highlightPotentials = highlightPotentials;
        this.region = region;
    }

    public double getDifficulty() {
        int degree = values.length;
        if (degree == 2)
            return 3.4;
        else if (degree == 3)
            return 4.0;
        else
            return 5.4;
    }

    public Collection<Potential> getRuleParents(Grid initialGrid, Grid currentGrid) {
        Collection<Potential> result = new ArrayList<Potential>();
        BitSet myPositions = new BitSet(9);
        for (int i = 0; i < values.length; i++)
            myPositions.or(region.getPotentialPositions(values[i]));
        for (int i = 0; i < 9; i++) {
            if (!myPositions.get(i)) {
                Cell cell = region.getCell(i);
                Cell initialCell = initialGrid.getCell(cell.getX(), cell.getY());
                for (int j = 0; j < values.length; j++) {
                    if (initialCell.hasPotentialValue(values[j]))
                        result.add(new Potential(cell, values[j], false));
                }
            }
        }
        return result;
    }

}
