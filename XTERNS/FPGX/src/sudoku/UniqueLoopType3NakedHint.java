/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class UniqueLoopType3NakedHint extends UniqueLoopHint {

    private final Cell c1;
    private final Cell c2;
    private final int[] otherValues;
    private final Grid.Region region;
    private final Cell[] cells;
    private final int[] nakedValues;

    public UniqueLoopType3NakedHint(UniqueLoops rule, List<Cell> loop, int v1, int v2,
            Map<Cell, BitSet> removablePotentials, Cell c1, Cell c2, int[] otherValues,
            Grid.Region region, Cell[] cells, int[] values) {
        super(rule, loop, v1, v2, removablePotentials);
        this.c1 = c1;
        this.c2 = c2;
        this.otherValues = otherValues;
        this.region = region;
        this.cells = cells;
        this.nakedValues = values;
    }

    @Override
    public double getDifficulty() {
        double toAdd = (nakedValues.length - 1) * 0.1;
        return super.getDifficulty() + toAdd;
    }

    @Override
    public int getType() {
        return 3;
    }

    /**
     * Overriden to differentiate hints with different naked sets.
     * <p>
     * Because we only make different objects that are equal according
     * to <tt>super.equals()</tt>, <tt>hashCode()</tt> does not need
     * to be overriden.
     */
    @Override
    public boolean equals(Object o) {
        if (!(o instanceof UniqueLoopType3NakedHint))
            return false;
        if (!super.equals(o))
            return false;
        UniqueLoopType3NakedHint other = (UniqueLoopType3NakedHint)o;
        if (!this.region.equals(other.region))
            return false;
        if (this.nakedValues.length != other.nakedValues.length)
            return false;
        for (int i = 0; i < nakedValues.length; i++) {
            if (this.nakedValues[i] != other.nakedValues[i])
                return false;
        }
        for (int i = 0; i < cells.length; i++) {
            if (!this.cells[i].equals(other.cells[i]))
                return false;
        }
        return true;
    }

}
