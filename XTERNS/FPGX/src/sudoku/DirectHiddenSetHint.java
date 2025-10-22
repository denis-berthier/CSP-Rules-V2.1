/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Direct Hidden Set hint
 */
public class DirectHiddenSetHint extends IndirectHint implements Rule {

    private final Cell[] cells;
    private final int[] values;
    private final Cell cell;
    private final int value;
    private final Map<Cell, BitSet> orangePotentials;
    private final Map<Cell, BitSet> redPotentials;
    private final Grid.Region region;

    public DirectHiddenSetHint(IndirectHintProducer rule, Cell[] cells,
            int[] values, Map<Cell, BitSet> orangePotentials,
            Map<Cell, BitSet> removePotentials, Grid.Region region,
            Cell cell, int value) {
        super(rule, getEmptyMap());
        this.cells = cells;
        this.values = values;
        this.cell = cell;
        this.value = value;
        this.orangePotentials = orangePotentials;
        this.redPotentials = removePotentials;
        this.region = region;
    }

    private static Map<Cell, BitSet> getEmptyMap() {
        return Collections.emptyMap();
    }

    @Override
    public Cell getCell() {
        return cell;
    }

    @Override
    public int getValue() {
        return value;
    }

    @Override
    public boolean isWorth() {
        return true;
    }

    public double getDifficulty() {
        int degree = values.length;
        if (degree == 2)
            return 2.0;
        else if (degree == 3)
            return 2.5;
        else
            return 4.3;
    }

}
