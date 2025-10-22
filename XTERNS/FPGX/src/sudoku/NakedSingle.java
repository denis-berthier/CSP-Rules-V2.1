/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * Implementation of the Naked Single solving techniques.
 */
public class NakedSingle implements DirectHintProducer {

    /**
     * Check if a cell has only one potential value, and accumulate
     * corresponding hints
     */
    public void getHints(Grid grid, HintsAccumulator accu) throws InterruptedException {

        for (int index = 0; index < 81; index++) {
            Cell cell = grid.getCell(index%9,index/9);
          if ( cell.getValue() == 0 ) {
            BitSet potentialValues = cell.getPotentialValues();
            if (potentialValues.cardinality() == 1) {
                accu.add(new NakedSingleHint(this, null, cell, potentialValues.nextSetBit(0)));
            }
          }
        }

    }

}
