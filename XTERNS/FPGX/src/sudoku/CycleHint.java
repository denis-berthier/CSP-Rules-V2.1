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
 * Bidirectional Cycle hint.
 */
public class CycleHint extends ChainingHint {

    private final Potential dstOn;
    private final Potential dstOff;

    private int _complexity = -1;

    public CycleHint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            boolean isYChain, boolean isXChain, Potential dstOn, Potential dstOff) {
        super(rule, removablePotentials, isYChain, isXChain);
        this.dstOn = dstOn;
        this.dstOff = dstOff;
    }

    @Override
    public int getFlatComplexity() {
        if (_complexity < 0)
            _complexity = getAncestorCount(dstOn);
        return _complexity;
    }

    @Override
    protected Collection<Potential> getChainsTargets() {
        Collection<Potential> result = new ArrayList<Potential>(2);
        result.add(this.dstOn);
        result.add(this.dstOff);
        return result;
    }

    @Override
    public int getSortKey() {
        if (isYChain && isXChain)
            return 4;
        else if (isYChain)
            return 3;
        else
            return 2;
    }

    public double getDifficulty() {
        double result;
        if (isYChain && isXChain)
            result = 7.0;
        else
            result = 6.5;
        return result + getLengthDifficulty();
    }

    @Override
    protected Potential getResult() {
        return null;
    }

}
