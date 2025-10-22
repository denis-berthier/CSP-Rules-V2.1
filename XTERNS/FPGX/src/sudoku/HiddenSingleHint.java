/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import sudoku.*;
import sudoku.Grid.*;

/**
 * Hidden Single hint
 */
public class HiddenSingleHint extends DirectHint implements Rule {

    private final boolean isAlone;

    public HiddenSingleHint(DirectHintProducer rule, Region region, Cell cell, int value,
            boolean isAlone) {
        super(rule, region, cell, value);
        this.isAlone = isAlone;
    }

    public double getDifficulty() {
        if (isAlone)
            return 1.0;
        else if (getRegion() instanceof Grid.Block)
            return 1.2;
        else
            return 1.5;
    }

}
