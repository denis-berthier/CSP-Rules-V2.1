/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class UniqueLoopType1Hint extends UniqueLoopHint {

    private final Cell target;

    public UniqueLoopType1Hint(UniqueLoops rule, List<Cell> loop, int v1, int v2,
            Map<Cell, BitSet> removablePotentials, Cell target) {
        super(rule, loop, v1, v2, removablePotentials);
        this.target = target;
    }

    @Override
    public int getType() {
        return 1;
    }

}
