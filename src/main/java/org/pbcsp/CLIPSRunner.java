package org.pbcsp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.file.Paths;
import java.util.Scanner;
import java.util.regex.Pattern;

public class CLIPSRunner implements AutoCloseable
{
    public interface Assertion
    {
        void apply(String actual, String equal);
    }
    private static final Pattern NL = Pattern.compile("\\s*");

    private final Assertion compare;
    private final Process process;
    private final BufferedReader reader;
    private final Writer writer;

    public CLIPSRunner(Assertion compare) throws Exception
    {
        this.compare = compare;
        process = Runtime.getRuntime().exec("CLIPS/clips");
        reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        writer = new BufferedWriter(new OutputStreamWriter(process.getOutputStream()));
    }

    @Override
    public void close() throws Exception
    {
        // Tell CLIPS to exit
        writer.write("(exit)\n");
        writer.flush();
        // Consume all remaining output
        var line = reader.readLine();
        while (line != null) line = reader.readLine();
        process.waitFor();
        writer.close();
        reader.close();
    }

    public boolean runTest(Scanner scanner) throws Exception
    {
        // Check for end of file
        if (scanner.hasNext(NL)) return false;
        // Send commands
        final var input = scanner.next();
        writer.write("(clear)\n");
        writer.write(input);
        writer.flush();
        // Extract expected output
        final var begin = scanner.next().trim();
        if (!begin.equals("BEGIN EXPECTED"))
        {
            throw new IllegalArgumentException("Expected: BEGIN EXPECTED, found: " + begin);
        }
        final var expected = scanner.next();
        final var end = scanner.next().trim();
        if (!end.equals("END EXPECTED"))
        {
            throw new IllegalArgumentException("Expected: END EXPECTED, found: " + end);
        }
        // Wait for load complete
        var line = reader.readLine();
        while (!line.equals("----LOAD-COMPLETE----")) line = reader.readLine();
        // Validate output
        final var parser = new Scanner(expected);
        parser.nextLine();  // consume newline from end of BEGIN EXPECTED
        for (var e = "CLIPS> " + parser.nextLine(); parser.hasNextLine(); e = parser.nextLine())
        {
            final var actual = reader.readLine();
            System.out.println(actual);
            if (e.startsWith("#")) continue;
            compare.apply(actual, e);
        }
        return true;
    }

    public void runSuite(String fileName) throws Exception
    {
        try (final var scanner = new Scanner(Paths.get(fileName)))
        {
            scanner.useDelimiter("####");
            // Run each test
            while (runTest(scanner));
        }
    }
}
