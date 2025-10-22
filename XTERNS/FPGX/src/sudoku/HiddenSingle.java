/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Implementation of the Hidden Single solving technique.
 */
public class HiddenSingle implements DirectHintProducer {

    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {
        getHints(grid, Grid.Block.class, accu, true);
        getHints(grid, Grid.Column.class, accu, true);
        getHints(grid, Grid.Row.class, accu, true);
        getHints(grid, Grid.Block.class, accu, false);
        getHints(grid, Grid.Column.class, accu, false);
        getHints(grid, Grid.Row.class, accu, false);
    }

    /**
     * For each parts of the given type, check if a value has only one
     * possible potential position.
     * @param regionType the type of the parts to check
     */
    private <T extends Grid.Region> void getHints(Grid grid, Class<T> regionType,
            HintsAccumulator accu, boolean aloneOnly) throws InterruptedException {
        Grid.Region[] regions = grid.getRegions(regionType);
        for (Grid.Region region : regions) {
            for (int value = 1; value <= 9; value++) {
                BitSet potentialIndexes = region.getPotentialPositions(value);
                if (potentialIndexes.cardinality() == 1) {
                    if ((region.getEmptyCellCount() == 1) == aloneOnly)
                        accu.add(new HiddenSingleHint(this, region, region.getCell(potentialIndexes.nextSetBit(0)), value, aloneOnly));
                }
            }
        }
    }

}
