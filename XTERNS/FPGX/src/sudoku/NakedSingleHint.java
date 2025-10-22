/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import sudoku.*;
import sudoku.Grid.*;

public class NakedSingleHint extends DirectHint implements Rule {

    public NakedSingleHint(DirectHintProducer rule, Region region, Cell cell, int value) {
        super(rule, region, cell, value);
    }

    public double getDifficulty() {
        return 2.3;
    }

}
