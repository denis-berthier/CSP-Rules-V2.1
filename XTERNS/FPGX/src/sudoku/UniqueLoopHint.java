/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;
import sudoku.Grid.*;

public abstract class UniqueLoopHint extends IndirectHint implements Rule {

    protected final List<Cell> loop;
    protected final int v1;
    protected final int v2;

    public UniqueLoopHint(UniqueLoops rule, List<Cell> loop, int v1, int v2,
            Map<Cell, BitSet> removablePotentials) {
        super(rule, removablePotentials);
        this.loop = loop;
        this.v1 = v1;
        this.v2 = v2;
    }

    public abstract int getType();

    public double getDifficulty() {
        double result = 4.5;
        if (loop.size() >= 10)
            result += 0.3;
        if (loop.size() >= 8)
            result += 0.2;
        else if (loop.size() >= 6)
            result += 0.1;
        return result;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null)
            return false;
        if (!o.getClass().equals(this.getClass()))
            return false;
        UniqueLoopHint other = (UniqueLoopHint)o;
        if (this.loop.size() != other.loop.size())
            return false;
        return this.loop.containsAll(other.loop);
    }

    @Override
    public int hashCode() {
        int result = 0;
        for (Cell cell : loop)
            result ^= cell.hashCode();
        return result;
    }

}
