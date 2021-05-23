class InputProcessor
{
    static final RegExp _symbols = RegExp(r'[ ./_\-\\]');

    static List<String> getWordsGroup(String input)
    {
        final lowerInput = input.toLowerCase();
        final inputLength = lowerInput.length;
        final buffer = StringBuffer();
        List<String> group = [];

        for (int i = 0; i < inputLength; i++)
        {
            String currentChar = lowerInput[i];
            String? nextChar = i == inputLength - 1 ? null : lowerInput[i + 1];

            if (_symbols.hasMatch(currentChar)) continue;

            buffer.write(currentChar);

            if (isEndOfWord(nextChar))
            {
                group.add(buffer.toString());
                buffer.clear();
            }
        }

        return group;
    }

    static bool isEndOfWord(String? nextChar)
    {
       return nextChar == null || _symbols.hasMatch(nextChar);
    }
}
