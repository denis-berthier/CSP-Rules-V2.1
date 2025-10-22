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
 * Forcing Chain (simple) hint.
 */
public class ForcingChainHint extends ChainingHint {

    private final Potential target;

    private int _complexity = -1;

    public ForcingChainHint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            boolean isYChain, boolean isXChain, Potential target) {
        super(rule, removablePotentials, isYChain, isXChain);
        this.target = target;
    }

    @Override
    public int getFlatComplexity() {
        if (_complexity < 0)
            _complexity = getAncestorCount(target);
        return _complexity;
    }

    @Override
    protected Collection<Potential> getChainsTargets() {
        return Collections.singletonList(this.target);
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
            result = 6.6;
        return result + getLengthDifficulty();
    }

    @Override
    public Cell getCell() {
        if (target.isOn)
            return target.cell;
        return null;
    }

    @Override
    public int getValue() {
        return target.value;
    }

    @Override
    protected Potential getResult() {
        return target;
    }

}
