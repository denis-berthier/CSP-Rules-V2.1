/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;
import sudoku.Grid.*;

public class AlignedExclusionHint extends IndirectHint implements Rule {

    private final Cell[] cells;
    private final Map<int[], Cell> lockedCombinations;

    public AlignedExclusionHint(AlignedExclusion rule, Map<Cell, BitSet> removables,
            Cell[] cells, Map<int[], Cell> lockedCombinations) {
        super(rule, removables);
        this.cells = cells;
        this.lockedCombinations = lockedCombinations;
    }

    public double getDifficulty() {
        int degree = cells.length;
        if (degree == 2)
            return 6.2;
        else if (degree == 3)
            return 7.5;
        else
            throw new UnsupportedOperationException();
    }

}
