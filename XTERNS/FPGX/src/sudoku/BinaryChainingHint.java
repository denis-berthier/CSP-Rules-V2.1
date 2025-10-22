/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Double Forcing Chain or Contradiction Forcing Chain hint.
 * Consist of two forcing chains.
 */
public class BinaryChainingHint extends ChainingHint {

    private final Potential srcPotential;
    private final Potential dstOnPotential;
    private final Potential dstOffPotential;
    private final boolean isAbsurd;
    private final boolean isNishio;

    private int _complexity = -1;

    public BinaryChainingHint(IndirectHintProducer rule, Map<Cell, BitSet> removablePotentials,
            Potential srcPotential, Potential fromOnPotential, Potential fromOffPotential,
            boolean isAbsurd, boolean isNishio) {
        super(rule, removablePotentials, true, true);
        this.srcPotential = srcPotential;
        this.dstOnPotential = fromOnPotential;
        this.dstOffPotential = fromOffPotential;
        this.isAbsurd = isAbsurd;
        this.isNishio = isNishio;
    }

    @Override
    protected Collection<Potential> getChainsTargets() {
        Collection<Potential> result = new ArrayList<Potential>(2);
        result.add(this.dstOnPotential);
        result.add(this.dstOffPotential);
        return result;
    }

    @Override
    public int getFlatComplexity() {
        if (_complexity < 0)
            _complexity = getAncestorCount(dstOnPotential) + getAncestorCount(dstOffPotential);
        return _complexity;
    }

    @Override
    public int getSortKey() {
        if (isAbsurd)
            return 7;
        else
            return 1;
    }

    public double getDifficulty() {
        return getChainingRule().getDifficulty() + getLengthDifficulty();
    }

    @Override
    protected Potential getResult() {
        if (isNishio || isAbsurd)
            return new Potential(srcPotential.cell, srcPotential.value, !srcPotential.isOn);
        else
            return dstOnPotential;
    }

}
