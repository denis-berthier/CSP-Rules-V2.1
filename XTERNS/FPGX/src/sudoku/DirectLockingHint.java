/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

public class DirectLockingHint extends IndirectHint implements Rule {

    private final Cell[] cells;
    private final Cell cell;
    private final int value;
    private final Map<Cell, BitSet> redPotentials;
    private final Map<Cell, BitSet> orangePotentials;
    private final Grid.Region[] regions;

    public DirectLockingHint(IndirectHintProducer rule, Cell[] cells, Cell cell,
            int value, Map<Cell, BitSet> highlightPotentials,
            Map<Cell, BitSet> removePotentials, Grid.Region... regions) {
        super(rule, getEmptyMap());
        this.cells = cells;
        this.cell = cell;
        this.value = value;
        this.redPotentials = removePotentials;
        this.orangePotentials = highlightPotentials;
        this.regions = regions;
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
        if (regions[0] instanceof Grid.Block)
            return 1.7;
        else
            return 1.9;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof DirectLockingHint))
            return false;
        DirectLockingHint other = (DirectLockingHint)o;
        if (this.value != other.value)
            return false;
        if (this.cells.length != other.cells.length)
            return false;
        return Arrays.asList(this.cells).containsAll(Arrays.asList(other.cells));
    }

    @Override
    public int hashCode() {
        int result = 0;
        for (Cell cell : cells)
            result ^= cell.hashCode();
        result ^= value;
        return result;
    }

}
