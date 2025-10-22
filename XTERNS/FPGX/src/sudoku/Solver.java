/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2009 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.*;

import sudoku.*;

/**
 * The solver for Sudoku grids.
 * Used to:
 * <ul>
 * <li>Build or rebuild the potential values of empty cells of a grid
 * <li>Get all available hints, excluding those requiring chaining rules
 * <li>Get the next available hint that follows a given list of hints, in
 * increasing order of difficulty
 * <li>Solve a grid using brute-force
 * <li>Solve a grid using logical hints, and get a rating of the grid as well as a
 * list of the rules that were used.
 * <li>Check the validity of a grid
 * </ul>
 * In all cases, a validity check is automatically enforced as soon as an invalid grid
 * would cause performance loss or any other problems.
 * <p>
 * The solving techniques themselves are implemented in the various classes of the
 * packages {@link diuf.sudoku.solver.rules}, {@link diuf.sudoku.solver.rules.chaining}
 * and {@link diuf.sudoku.solver.rules.unique}. Checks for validity are
 * implemented in classes of the package {@link diuf.sudoku.solver.checks}.
 */
public class Solver {

    public double difficulty;
    public double pearl;
    public double diamond;

    private Grid grid;
    private List<HintProducer> directHintProducers;
    private List<IndirectHintProducer> indirectHintProducers;
    private List<IndirectHintProducer> chainingHintProducers;
    private List<IndirectHintProducer> chainingHintProducers2;
    private List<IndirectHintProducer> advancedHintProducers;
    private List<IndirectHintProducer> experimentalHintProducers;

    private List<IndirectHintProducer> indirectHintProducersLate;


    public Solver(Grid grid) {
        this.grid = grid;

        directHintProducers = new ArrayList<HintProducer>();
        directHintProducers.add( new HiddenSingle());
        directHintProducers.add( new Locking(true));
        directHintProducers.add( new HiddenSet(2, true));
        directHintProducers.add( new NakedSingle());
        directHintProducers.add( new HiddenSet(3, true));

        indirectHintProducers = new ArrayList<IndirectHintProducer>();
        indirectHintProducers.add( new Locking(false));
        indirectHintProducers.add( new NakedSet(2));
        indirectHintProducers.add( new Fisherman(2));
        indirectHintProducers.add( new HiddenSet(2, false));
        indirectHintProducers.add( new NakedSet(3));
        indirectHintProducers.add( new Fisherman(3));
        indirectHintProducers.add( new HiddenSet(3, false));
        indirectHintProducers.add( new XYWing(false));
        indirectHintProducers.add( new XYWing(true));
        indirectHintProducers.add( new UniqueLoops());
        indirectHintProducers.add( new NakedSet(4));
        indirectHintProducers.add( new Fisherman(4));
        indirectHintProducers.add( new HiddenSet(4, false));
        indirectHintProducers.add( new BivalueUniversalGrave());
        indirectHintProducers.add( new AlignedPairExclusion());

        chainingHintProducers = new ArrayList<IndirectHintProducer>();
        chainingHintProducers.add( new Chaining(false, false, false, 0, true, 0));
        chainingHintProducers.add( new AlignedExclusion(3));
        chainingHintProducers.add( new Chaining(false, true, true, 0, true, 0));
        chainingHintProducers.add( new Chaining(true, false, false, 0, true, 0));
        chainingHintProducers.add( new Chaining(true, true, false, 0, true, 0));

        chainingHintProducers2 = new ArrayList<IndirectHintProducer>();
        chainingHintProducers2.add( new Chaining(true, true, false, 1, true, 0));

        advancedHintProducers = new ArrayList<IndirectHintProducer>();
        advancedHintProducers.add( new Chaining(true, true, false, 2, true, 0));
        advancedHintProducers.add( new Chaining(true, true, false, 3, true, 0));

        experimentalHintProducers = new ArrayList<IndirectHintProducer>();
        experimentalHintProducers.add( new Chaining(true, true, false, 4, true, 0));
        experimentalHintProducers.add( new Chaining(true, true, false, 4, true, 1));
        experimentalHintProducers.add( new Chaining(true, true, false, 4, true, 2));

        indirectHintProducersLate = new ArrayList<IndirectHintProducer>();
        indirectHintProducersLate.add( new Locking(false));
        indirectHintProducersLate.add( new NakedSet(2));
        indirectHintProducersLate.add( new HiddenSet(2, false));
        indirectHintProducersLate.add( new NakedSet(3));
        indirectHintProducersLate.add( new HiddenSet(3, false));
        indirectHintProducersLate.add( new XYWing(false));
        indirectHintProducersLate.add( new XYWing(true));
        indirectHintProducersLate.add( new NakedSet(4));
        indirectHintProducersLate.add( new HiddenSet(4, false));
    }

    public Solver(Grid grid, int multi, int dynamic, int nested) {
        this.grid = grid;

        directHintProducers = new ArrayList<HintProducer>();
        directHintProducers.add( new HiddenSingle());
        directHintProducers.add( new Locking(true));
        directHintProducers.add( new HiddenSet(2, true));
        directHintProducers.add( new NakedSingle());
        directHintProducers.add( new HiddenSet(3, true));

        indirectHintProducers = new ArrayList<IndirectHintProducer>();
        indirectHintProducers.add( new Locking(false));
        indirectHintProducers.add( new NakedSet(2));
        indirectHintProducers.add( new Fisherman(2));
        indirectHintProducers.add( new HiddenSet(2, false));
        indirectHintProducers.add( new NakedSet(3));
        indirectHintProducers.add( new Fisherman(3));
        indirectHintProducers.add( new HiddenSet(3, false));
        indirectHintProducers.add( new XYWing(false));
        indirectHintProducers.add( new XYWing(true));
      if ( multi == 0 )
        indirectHintProducers.add( new UniqueLoops());
        indirectHintProducers.add( new NakedSet(4));
        indirectHintProducers.add( new Fisherman(4));
        indirectHintProducers.add( new HiddenSet(4, false));
      if ( multi == 0 )
        indirectHintProducers.add( new BivalueUniversalGrave());
        indirectHintProducers.add( new AlignedPairExclusion());

        chainingHintProducers = new ArrayList<IndirectHintProducer>();
        chainingHintProducers.add( new Chaining(false, false, false, 0, true, 0));
        chainingHintProducers.add( new AlignedExclusion(3));
        chainingHintProducers.add( new Chaining(false, true, true, 0, true, 0));
        chainingHintProducers.add( new Chaining(true, false, false, 0, true, 0));
      if ( dynamic == 0 )
        chainingHintProducers.add( new Chaining(true, true, false, 0, true, 0));

        chainingHintProducers2 = new ArrayList<IndirectHintProducer>();
      if ( dynamic == 0 )
        chainingHintProducers2.add( new Chaining(true, true, false, 1, true, 0));

        advancedHintProducers = new ArrayList<IndirectHintProducer>();
      if ( nested == 0 ) {
        advancedHintProducers.add( new Chaining(true, true, false, 2, true, 0));
        advancedHintProducers.add( new Chaining(true, true, false, 3, true, 0));
      }

        experimentalHintProducers = new ArrayList<IndirectHintProducer>();
      if ( nested == 0 ) {
        experimentalHintProducers.add( new Chaining(true, true, false, 4, true, 0));
        experimentalHintProducers.add( new Chaining(true, true, false, 4, true, 1));
        experimentalHintProducers.add( new Chaining(true, true, false, 4, true, 2));
      }
    }

    /**
     * This is the basic Sudoku rule: If a cell contains a value,
     * that value can be removed from the potential values of
     * all cells in the same block, row or column.
     * @param partType the Class of the part to cancel in
     * (block, row or column)
     */
    private <T extends Grid.Region> void cancelBy(Class<T> partType) {
        Grid.Region[] parts = grid.getRegions(partType);
        for (Grid.Region part : parts) {
            for (int i = 0; i < 9; i++) {
                Cell cell = part.getCell(i);
                if (!cell.isEmpty()) {
                    int value = cell.getValue();
                    for (int j = 0; j < 9; j++)
                        part.getCell(j).removePotentialValue(value);
                }
            }
        }
    }

    /**
     * Rebuild, for each empty cell, the set of potential values.
     */
    public void rebuildPotentialValues() {
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = grid.getCell(x, y);
                if (cell.getValue() == 0) {
                    for (int value = 1; value <= 9; value++)
                        cell.addPotentialValue(value);
                }
            }
        }
        cancelPotentialValues();
    }

    /**
     * Remove all illegal potential values according
     * to the current values of the cells.
     * Can be invoked after a new cell gets a value.
     */
    public void cancelPotentialValues() {
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                Cell cell = grid.getCell(x, y);
                if (cell.getValue() != 0)
                    cell.clearPotentialValues();
            }
        }
        cancelBy(Grid.Block.class);
        cancelBy(Grid.Row.class);
        cancelBy(Grid.Column.class);
    }

    private boolean isSolved() {
        for (int y = 0; y < 9; y++) {
            for (int x = 0; x < 9; x++) {
                if (grid.getCellValue(x, y) == 0)
                    return false;
            }
        }
        return true;
    }

    public void getDifficulty() {
        difficulty = 0.0;
        pearl = 0.0;
        diamond = 0.0;
        while (!isSolved()) {
            SingleHintAccumulator accu = new SingleHintAccumulator();
            try {
                for (HintProducer producer : directHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : indirectHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : chainingHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : chainingHintProducers2)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : advancedHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : experimentalHintProducers)
                    producer.getHints(grid, accu);
            } catch (InterruptedException willHappen) {}
            Hint hint = accu.getHint();
            if (hint == null) {
                difficulty = 20.0;
                break;
            }
            Rule rule = (Rule)hint;
            double ruleDiff = rule.getDifficulty();
            if (ruleDiff > difficulty)
                difficulty = ruleDiff;
            hint.apply(grid);
            if (pearl == 0.0) {
                if (diamond == 0.0)
                    diamond = difficulty;
                if (hint.getCell() != null) {
                    pearl = difficulty;
                }
            }
        }
    }

    public void getClosureDifficulty() {
        difficulty = 0.0;
        pearl = 0.0;
        diamond = 0.0;
        while (!isSolved()) {
            SingleHintAccumulator accu = new SingleHintAccumulator();
            try {
                for (HintProducer producer : directHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : indirectHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : chainingHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : chainingHintProducers2)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : advancedHintProducers)
                    producer.getHints(grid, accu);
                for (IndirectHintProducer producer : experimentalHintProducers)
                    producer.getHints(grid, accu);
            } catch (InterruptedException willHappen) {}
            Hint hint = accu.getHint();
            if (hint == null) {
                break;
            }
            Rule rule = (Rule)hint;
            double ruleDiff = rule.getDifficulty();
            if (ruleDiff > difficulty)
                difficulty = ruleDiff;
            hint.apply(grid);
            if (pearl == 0.0) {
                if (diamond == 0.0)
                    diamond = difficulty;
                if (hint.getCell() != null) {
                    pearl = difficulty;
                }
            }
        }
    }

    public void getFastDifficulty() {
            difficulty = 0.0;
            pearl = 0.0;
            diamond = 0.0;
            SmallestHintsAccumulator accu = new SmallestHintsAccumulator();
            while (!isSolved()) {
                try {
                    for (HintProducer producer : directHintProducers)
                        producer.getHints(grid, accu);
                    if (accu.hasHints()) throw new InterruptedException();
                   
                    if (difficulty < 9.0)
                    {
                       for (IndirectHintProducer producer : indirectHintProducers)
                          producer.getHints(grid, accu);
                       if (accu.hasHints()) throw new InterruptedException();
                    }
                    else
                    {
                       for (IndirectHintProducer producer : indirectHintProducersLate)
                          producer.getHints(grid, accu);
                       if (accu.hasHints()) throw new InterruptedException();
                    }
                    if (difficulty < 10.0)
                    {
                       for (IndirectHintProducer producer : chainingHintProducers)
                          producer.getHints(grid, accu);
                       if (accu.hasHints()) throw new InterruptedException();
                   }
                    for (IndirectHintProducer producer : chainingHintProducers2)
                        producer.getHints(grid, accu);
                    if (accu.hasHints()) throw new InterruptedException();
                    for (IndirectHintProducer producer : advancedHintProducers)
                        producer.getHints(grid, accu);
                    if (accu.hasHints()) throw new InterruptedException();
                    for (IndirectHintProducer producer : experimentalHintProducers)
                        producer.getHints(grid, accu);
                } catch (InterruptedException willHappen) {}
                List<Hint> hints = accu.getHints();
                if (hints.isEmpty()) {
                    break;
                }
               
                for (Hint hint : hints)
                {
                   Rule rule = (Rule)hint;
                   double ruleDiff = rule.getDifficulty();
                    if (ruleDiff > difficulty)
                        difficulty = ruleDiff;
                   
                    if (pearl == 0.0) {
                        if (diamond == 0.0)
                            diamond = difficulty;
                        if (hint.getCell() != null) {
                            pearl = difficulty;
                        }
                    }
                   
                    hint.apply(grid);
                }
               
                accu.clearStep();
            }
        }

}
