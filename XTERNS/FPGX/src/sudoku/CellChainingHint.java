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
 * Cell Forcing Chain hint.
 */
public class CellChainingHint extends ChainingHint {

    private final Cell srcCell;
    private final LinkedHashMap<Integer, Potential> chains;

    public CellChainingHint(IndirectHintProducer rule,
            Map<Cell, BitSet> removablePotentials, Cell srcCell,
            LinkedHashMap<Integer, Potential> chains) {
        super(rule, removablePotentials, true, true);
        this.srcCell = srcCell;
        this.chains = chains;
    }

    @Override
    protected Collection<Potential> getChainsTargets() {
        return Collections.unmodifiableCollection(chains.values());
    }

    @Override
    public int getFlatComplexity() {
        int result = 0;
        for (Potential target : chains.values())
            result += super.getAncestorCount(target);
        return result;
    }

    @Override
    public int getSortKey() {
        return 5;
    }

    public double getDifficulty() {
        return getChainingRule().getDifficulty() + getLengthDifficulty();
    }

    @Override
    public Potential getResult() {
        return chains.values().iterator().next();
    }

}
