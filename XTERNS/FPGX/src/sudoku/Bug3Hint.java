/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class Bug3Hint extends BugHint implements Rule {

    private final Cell[] bugCells;
    private final Cell[] nakedCells;
    private final Map<Cell, BitSet> extraValues;
    private final BitSet allExtraValues;
    private final BitSet nakedSet;
    private final Grid.Region region;

    public Bug3Hint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            Cell[] bugCells, Cell[] nakedCells, Map<Cell, BitSet> extraValues,
            BitSet allExtraValues, BitSet nakedSet, Grid.Region region) {
        super(rule, removablePotentials);
        this.bugCells = bugCells;
        this.extraValues = extraValues;
        this.allExtraValues = allExtraValues;
        this.nakedCells = nakedCells;
        this.nakedSet = nakedSet;
        this.region = region;
    }

    public double getDifficulty() {
        double toAdd = (nakedSet.cardinality() - 1) * 0.1;
        return 5.7 + toAdd;
    }

}
