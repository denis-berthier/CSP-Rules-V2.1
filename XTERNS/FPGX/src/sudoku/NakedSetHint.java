/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class NakedSetHint extends IndirectHint implements Rule, HasParentPotentialHint {

    private final Cell[] cells;
    private final int[] values;
    private final Map<Cell, BitSet> highlightPotentials;
    private final Grid.Region region;

    public NakedSetHint(IndirectHintProducer rule, Cell[] cells,
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
            return 3.0;
        else if (degree == 3)
            return 3.6;
        else
            return 5.0;
    }

    public Collection<Potential> getRuleParents(Grid initialGrid, Grid currentGrid) {
        Collection<Potential> result = new ArrayList<Potential>();
        BitSet myValues = new BitSet(10);
        for (int i = 0; i < values.length; i++)
            myValues.set(values[i]);
        for (Cell cell : this.cells) {
            Cell initialCell = initialGrid.getCell(cell.getX(), cell.getY());
            for (int value = 1; value <= 9; value++) {
                if (initialCell.hasPotentialValue(value) && !myValues.get(value))
                    result.add(new Potential(cell, value, false));
            }
        }
        return result;
    }

}
