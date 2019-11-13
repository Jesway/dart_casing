library dart_casing;

import 'package:dart_casing/input_processor.dart';

class Casing
{
    static String camelCase(String input)
    {
        final group = InputProcessor.getWordsGroup(input);
        final buffer = StringBuffer();

        for(int i = 0; i < group.length; i++)
        {
            var word = group[i];

            buffer.write(i == 0 ? word : _uppercaseFirst(word));
        }

        return buffer.toString();
    }

    static String pascalCase(String input)
    {
        final group = InputProcessor.getWordsGroup(input).map(_uppercaseFirst);

        return group.join();
    }

    static String snakeCase(String input)
    {
        return lowerCase(input, separator: "_");
    }

    static String paramCase(String input)
    {
        return lowerCase(input, separator: "-");
    }

    static String dotCase(String input)
    {
        return lowerCase(input, separator: ".");
    }

    static String constantCase(String input)
    {
        return upperCase(input, separator: "_");
    }

    static String titleCase(String input, {String separator = " "})
    {
        final group = InputProcessor.getWordsGroup(input).map(_uppercaseFirst);

        return group.join(separator);
    }

    static String lowerCase(String input, {String separator = " "})
    {
        final group = InputProcessor.getWordsGroup(input);

        return group.join(separator);
    }

    static String upperCase(String input, {String separator = " "})
    {
        final group = InputProcessor.getWordsGroup(input).map((x) => x.toUpperCase());

        return group.join(separator);
    }

    static String _uppercaseFirst(String word)
    {
        return word.replaceRange(0, 1, word[0].toUpperCase());
    }
}
