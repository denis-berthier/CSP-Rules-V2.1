/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;
import sudoku.*;

public class UniqueLoopType2Hint extends UniqueLoopHint {

    private final Cell[] cells;
    private final int value;

    public UniqueLoopType2Hint(UniqueLoops rule, List<Cell> loop, int v1, int v2,
            Map<Cell, BitSet> removablePotentials, Cell[] cells, int value) {
        super(rule, loop, v1, v2, removablePotentials);
        this.cells = cells;
        this.value = value;
    }

    @Override
    public int getType() {
        return 2;
    }

}
