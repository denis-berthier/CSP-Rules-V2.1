package org.pbcsp;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import java.nio.file.Files;
import java.nio.file.Path;

public class SudoRulesTest
{
    private CLIPSRunner clips;

    @BeforeClass
    public void setUp() throws Exception
    {
        clips = new CLIPSRunner(Assert::assertEquals);
    }

    @AfterClass
    public void tearDown() throws Exception
    {
        clips.close();
    }

    @DataProvider
    public Object[][] enumerateExamples() throws Exception
    {
        return Files.walk(Path.of("Examples/Sudoku-examples/CLIPS-puzzles"))
            .filter(p -> p.toString().endsWith(".clp"))
            .peek(System.out::println)
            .map(p -> new Object[] { p.toString() })
            .toArray(Object[][]::new);
    }

    @Test(dataProvider = "enumerateExamples")
    public void Examples_CLIPS_Puzzles(String fileName) throws Exception
    {
        clips.runSuite(fileName);
    }
}
