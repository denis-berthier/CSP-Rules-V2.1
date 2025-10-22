/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class UniqueLoopType4Hint extends UniqueLoopHint {

    private final Cell c1;
    private final Cell c2;
    private final int lockValue;
    private final int remValue;
    private final Grid.Region region;

    public UniqueLoopType4Hint(UniqueLoops rule, List<Cell> loop, int lockValue,
            int remValue, Map<Cell, BitSet> removablePotentials, Cell c1, Cell c2,
            Grid.Region region) {
        super(rule, loop, lockValue, remValue, removablePotentials);
        this.c1 = c1;
        this.c2 = c2;
        this.lockValue = lockValue;
        this.remValue = remValue;
        this.region = region;
    }

    @Override
    public int getType() {
        return 4;
    }

}
