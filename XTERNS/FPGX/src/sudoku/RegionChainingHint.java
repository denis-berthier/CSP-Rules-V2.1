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
 * Region Forcing Chain hint.
 */
public class RegionChainingHint extends ChainingHint {

    private final Grid.Region region;
    private final int value;
    private Map<Integer, Potential> chains;

    public RegionChainingHint(IndirectHintProducer rule,
            Map<Cell, BitSet> removablePotentials, Grid.Region region, int value,
            Map<Integer, Potential> chains) {
        super(rule, removablePotentials, true, true);
        this.region = region;
        this.value = value;
        this.chains = chains;
    }

    @Override
    public int getFlatComplexity() {
        int result = 0;
        for (Potential target : chains.values())
            result += super.getAncestorCount(target);
        return result;
    }

    @Override
    protected Collection<Potential> getChainsTargets() {
        return Collections.unmodifiableCollection(this.chains.values());
    }

    @Override
    public int getSortKey() {
        return 6;
    }

    Region getRegion() {
        return this.region;
    }

    public double getDifficulty() {
        return getChainingRule().getDifficulty() + getLengthDifficulty();
    }

    @Override
    protected Potential getResult() {
        return chains.values().iterator().next();
    }

}
