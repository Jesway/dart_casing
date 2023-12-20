library dart_casing;

class Casing
{
    static final RegExp _symbols = RegExp(r'[ ./_\-\\]');
    static final RegExp _camelPascalCase = RegExp(r'(?<=[a-z])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])');
    static final RegExp _digitRegExp = RegExp(r'\d');
    static final RegExp _letterRegExp = RegExp(r'[a-zA-Z]');

    static String camelCase(String input) 
    {
        final group = _getWordsGroup(input);
    
        final buffer = StringBuffer();

        for (int i = 0; i < group.length; i++) 
        {
            var word = group[i];

            if (i == 0) 
            {
                buffer.write(word.toLowerCase());
            } 
            else 
            {
                buffer.write(_uppercaseFirst(word.toLowerCase()));
            }
        }

        return buffer.toString();
    }

    static String pascalCase(String input)
    {
        final group = _getWordsGroup(input).map(_uppercaseFirst);

        return group.join();
    }

    static String snakeCase(String input)
    {
        return lowerCase(input, separator: "_");
    }

    static String kebabCase(String input)
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

    // following APA Style guide:
  // - https://apastyle.apa.org/style-grammar-guidelines/capitalization/title-case
  static String titleCase(String input, {String separator = " "})
  {
    List<String> group = _getWordsGroup(input);

    // exclusion list
    List<String> exclusionListEng = [
      // articles
      'a',
      'an',
      'the',
      // coordinating conjunctions
      'and',
      'but',
      'for',
      // 'nor', // not NYT-style
      'or',
      // 'so', // not NYT-style
      'yet',
      // short prepositions (< 4 chars)
      'as',
      'at',
      'by',
      'en',
      'if',
      'in',
      'of',
      // 'off', // not NYT-style
      'on',
      'per',
      'to',
      // 'up', // not NYT-style
      'v.',
      'via',
      'vs.'
    ];
    List<String> punctuationList = [':', '--', '.', '?', '!'];

    // apply Title Case
    group = group.asMap().entries.map((word) {
      var isFirstWord = word.key == 0;
      var isAfterPunctuation =
          !isFirstWord && punctuationList.contains(group[word.key - 1]);
      var isExcluded = exclusionListEng.contains(word.value);

      // If NOT first word exception AND is NOT after punctuation AND is part of the exclusion list
      if (!isFirstWord && !isAfterPunctuation && isExcluded) {
        // return word unchanged
        return word.value;
      }

      // capitalize first letter of word
      return _uppercaseFirst(word.value);
    }).toList();

    // rejoin words into sentence string
    return group.join(separator);
  }

    static String lowerCase(String input, {String separator = " "})
    {
        final group = _getWordsGroup(input);

        return group.join(separator);
    }

    static String upperCase(String input, {String separator = " "})
    {
        final group = _getWordsGroup(input).map((x) => x.toUpperCase());

        return group.join(separator);
    }

    static String _uppercaseFirst(String word)
    {
        return word.replaceRange(0, 1, word[0].toUpperCase());
    }

    static List<String> _getWordsGroup(String input) 
    {
        final buffer = StringBuffer();
        List<String> group = [];

        for (int i = 0; i < input.length; i++) 
        {
            String currentChar = input[i];
            String? nextChar = i == input.length - 1 ? null : input[i + 1];

            if (_symbols.hasMatch(currentChar)) continue;

            bool isDigit = _digitRegExp.hasMatch(currentChar);
            bool isNextDigit = _digitRegExp.hasMatch(nextChar ?? "");
            bool isLetter = _letterRegExp.hasMatch(currentChar);
            bool isNextLetter = _letterRegExp.hasMatch(nextChar ?? "");

            if ((isDigit && isNextLetter) || (isLetter && isNextDigit)) 
            {
                buffer.write(currentChar);
                group.add(buffer.toString());
                buffer.clear();
                continue;
            }

            bool isUppercase = currentChar.toUpperCase() == currentChar;
            bool isNextUppercase = nextChar?.toUpperCase() == nextChar;

            if (isUppercase && buffer.isNotEmpty && !isNextUppercase && !isDigit) 
            {
                group.add(buffer.toString());
                buffer.clear();
            }

            buffer.write(currentChar);

            if (_isEndOfWord(nextChar)) 
            {
                group.add(buffer.toString());
                buffer.clear();
            }
        }

        // Split CamelCase and PascalCase strings
        group = group.expand((word) 
        {
            if (_camelPascalCase.hasMatch(word)) 
            {
                return word.split(_camelPascalCase);
            }
            return [word];
        }).toList();

        return group.map((e) => e.toLowerCase()).toList();
    }


    static bool _isEndOfWord(String? nextChar)
    {
        return nextChar == null || _symbols.hasMatch(nextChar);
    }
}
