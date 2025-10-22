/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Locking hint (Pointing, Claiming, X-Wing, Swordfish or Jellyfish)
 */
public class LockingHint extends IndirectHint implements Rule, HasParentPotentialHint {

    private final Cell[] cells;
    private final int value;
    private final Map<Cell, BitSet> highlightPotentials;
    private final Grid.Region[] regions;

    public LockingHint(IndirectHintProducer rule, Cell[] cells,
            int value, Map<Cell, BitSet> highlightPotentials,
            Map<Cell, BitSet> removePotentials, Grid.Region... regions) {
        super(rule, removePotentials);
        this.cells = cells;
        this.value = value;
        this.highlightPotentials = highlightPotentials;
        this.regions = regions;
    }

    public double getDifficulty() {
        int degree = regions.length / 2;
        if (degree == 1) {
            if (regions[0] instanceof Grid.Block)
                return 2.6;
            else
                return 2.8;
        } else if (degree == 2)
            return 3.2;
        else if (degree == 3)
            return 3.8;
        else
            return 5.2;
    }

    public Collection<Potential> getRuleParents(Grid initialGrid, Grid currentGrid) {
        Collection<Potential> result = new ArrayList<Potential>();
        for (int i = 0; i < regions.length; i+= 2) {
            for (int pos1 = 0; pos1 < 9; pos1++) {
                Cell cell = regions[i].getCell(pos1);
                Cell initCell = initialGrid.getCell(cell.getX(), cell.getY());
                if (initCell.hasPotentialValue(value) && !cell.hasPotentialValue(value)) {
                    boolean isInRegion2 = false;
                    for (int j = 1; j < regions.length; j+= 2) {
                        for (int pos2 = 0; pos2 < 9; pos2++) {
                            Cell other = regions[j].getCell(pos2);
                            if (other.equals(cell))
                                isInRegion2 = true;
                        }
                    }
                    if (!isInRegion2)
                        result.add(new Potential(cell, value, false));
                }
            }
        }
        return result;
    }

}
