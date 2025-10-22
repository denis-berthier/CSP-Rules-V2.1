/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;
import sudoku.Grid.*;

public class Bug2Hint extends BugHint implements Rule {

    private final Cell[] bugCells;
    private final int bugValue;

    public Bug2Hint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            Cell[] bugCells, int bugValue) {
        super(rule, removablePotentials);
        this.bugCells = bugCells;
        this.bugValue = bugValue;
    }

    public double getDifficulty() {
        return 5.7;
    }

}
