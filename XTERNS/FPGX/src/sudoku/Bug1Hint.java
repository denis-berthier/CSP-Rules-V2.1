/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class Bug1Hint extends BugHint implements Rule {

    protected final Cell bugCell;
    protected final BitSet bugValues;

    public Bug1Hint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            Cell bugCell, BitSet bugValues) {
        super(rule, removablePotentials);
        this.bugCell = bugCell;
        this.bugValues = bugValues;
    }

    public double getDifficulty() {
        return 5.6;
    }

}
