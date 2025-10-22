/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;
import sudoku.Grid.*;

/**
 * XW-Wing and XYZ-Wing hints
 */
public class XYWingHint extends IndirectHint implements Rule {

    private final boolean isXYZ;
    private final Cell xyCell;
    private final Cell xzCell;
    private final Cell yzCell;
    private final int value;

    public XYWingHint(XYWing rule, Map<Cell,BitSet> removablePotentials,
            boolean isXYZ, Cell xyCell, Cell xzCell, Cell yzCell, int value) {
        super(rule, removablePotentials);
        this.isXYZ = isXYZ;
        this.xyCell = xyCell;
        this.xzCell = xzCell;
        this.yzCell = yzCell;
        this.value = value;
    }

    public double getDifficulty() {
        if (isXYZ)
            return 4.4;
        else
            return 4.2;
    }

}
