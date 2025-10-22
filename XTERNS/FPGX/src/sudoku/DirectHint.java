/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import sudoku.*;

/**
 * Abstract class for hints that allow the direct placement of a value
 * in a cell of the sudoku grid.
 */
public abstract class DirectHint extends Hint {

    private DirectHintProducer rule;
    private Grid.Region region;
    private Cell cell;
    private int value;

    /**
     * Create a new hint
     * @param rule the rule that discovered the hint
     * @param region the region for which the hint is applicable,
     * or <tt>null</tt> if irrelevent
     * @param cell the cell in which a value can be placed
     * @param value the value that can be placed in the cell
     */
    public DirectHint(DirectHintProducer rule, Grid.Region region, Cell cell, int value) {
        this.rule = rule;
        this.region = region;
        this.cell = cell;
        this.value = value;
    }

    @Override
    public DirectHintProducer getRule() {
        return this.rule;
    }

    protected Grid.Region getRegion() {
        return this.region;
    }

    @Override
    public Cell getCell() {
        return this.cell;
    }

    @Override
    public int getValue() {
        return this.value;
    }

    @Override
    public void apply(Grid targetGrid) {
        Cell targetCell = targetGrid.getCell(cell.getX(), cell.getY());
        targetCell.setValueAndCancel(value);
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof DirectHint))
            return false;
        DirectHint other = (DirectHint)o;
        return this.rule.equals(other.rule) && this.cell.equals(other.cell) && this.value == other.value;
    }

    @Override
    public int hashCode() {
        return this.rule.hashCode() ^ this.cell.hashCode() ^ this.value;
    }

}
