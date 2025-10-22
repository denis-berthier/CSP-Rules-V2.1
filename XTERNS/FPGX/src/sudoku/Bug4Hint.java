/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;
import sudoku.Grid.*;

public class Bug4Hint extends BugHint implements Rule {

    private final Cell bugCell1;
    private final Cell bugCell2;
    private final Map<Cell, BitSet> extraValues;
    private final BitSet allExtraValues;
    private final int value;
    private final Grid.Region region;

    public Bug4Hint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            Cell bugCell1, Cell bugCell2, Map<Cell, BitSet> extraValues,
            BitSet allExtraValues, int value, Grid.Region region) {
        super(rule, removablePotentials);
        this.bugCell1 = bugCell1;
        this.bugCell2 = bugCell2;
        this.extraValues = extraValues;
        this.allExtraValues = allExtraValues;
        this.value = value;
        this.region = region;
    }

    public double getDifficulty() {
        return 5.7;
    }

}
