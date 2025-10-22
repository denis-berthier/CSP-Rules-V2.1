/*
 * Project: Sudoku Explainer
 * Copyright (C) 2006-2007 Nicolas Juillerat
 * Available under the terms of the Lesser General Public License (LGPL)
 */
package sudoku;

import java.util.ArrayList;
import java.util.List;

public class SmallestHintsAccumulator implements HintsAccumulator {

    private List<Hint> result;

   // dif is 0.0 at start, and changes to first added rating
    private double totalDif = 0.0;
   private double stepMax = 0.0;

    public SmallestHintsAccumulator() {
        super();
        this.result = new ArrayList<Hint>();
    }

    public void add(Hint hint) throws InterruptedException {
       double newDifficulty = ((Rule)hint).getDifficulty();
      if(stepMax == 0.0) {
         
         if (newDifficulty > totalDif)
         {
            stepMax = newDifficulty;
         }
         else
         {
            stepMax = totalDif;
         }
      } else if(newDifficulty > stepMax) {
         throw new InterruptedException(); // this assumes calls are ordered strictly ascending by difficulty
      } else if(newDifficulty > totalDif) {
         totalDif = newDifficulty;
      }
      result.add(hint);
    }
   
    public void clearStep()
    {
       result.clear();
       if (stepMax > totalDif)
       {
          totalDif = stepMax;
       }
       stepMax = 0.0;
    }
   
    public List<Hint> getHints() {
        return result;
    }

    public boolean hasHints()
    {
       return !result.isEmpty();
    }

} // class SmallestHintsAccumulator
