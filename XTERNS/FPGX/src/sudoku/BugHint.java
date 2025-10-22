/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public abstract class BugHint extends IndirectHint implements Rule {

    public BugHint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials) {
        super(rule, removablePotentials);
    }

}
