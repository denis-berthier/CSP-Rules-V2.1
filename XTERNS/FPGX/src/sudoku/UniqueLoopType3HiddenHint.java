/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.BitSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import sudoku.Cell;
import sudoku.Grid;

public class UniqueLoopType3HiddenHint extends UniqueLoopHint {

    private final Cell c1;
    private final Cell c2;
    private final int[] otherValues;
    private final Grid.Region region;
    private final BitSet hiddenValues;
    private final int[] hiddenIndexes;

    public UniqueLoopType3HiddenHint(UniqueLoops rule, List<Cell> loop, int v1, int v2,
            Map<Cell, BitSet> removablePotentials, Cell c1, Cell c2, int[] otherValues, BitSet hiddenValues,
            Grid.Region region, int[] indexes) {
        super(rule, loop, v1, v2, removablePotentials);
        this.c1 = c1;
        this.c2 = c2;
        this.otherValues = otherValues;
        this.hiddenValues = hiddenValues;
        this.region = region;
        this.hiddenIndexes = indexes;
    }

    @Override
    public double getDifficulty() {
        double toAdd = (hiddenIndexes.length - 1) * 0.1;
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
        if (!(o instanceof UniqueLoopType3HiddenHint))
            return false;
        if (!super.equals(o))
            return false;
        UniqueLoopType3HiddenHint other = (UniqueLoopType3HiddenHint)o;
        if (!this.region.equals(other.region))
            return false;
        if (!this.hiddenValues.equals(other.hiddenValues))
            return false;
        if (this.hiddenIndexes.length != other.hiddenIndexes.length)
            return false;
        for (int i = 0; i < hiddenIndexes.length; i++) {
            if (this.hiddenIndexes[i] != other.hiddenIndexes[i])
                return false;
        }
        return true;
    }

}
