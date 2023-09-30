import 'package:dart_casing/dart_casing.dart';
import 'package:test/test.dart';

void main() {
  group('Casing', () {
    test('camelCase should convert various inputs to camelCase', () {
      expect(Casing.camelCase("my_word separated.by-multiple\\symbols"), equals('myWordSeparatedByMultipleSymbols'));
      expect(Casing.camelCase("MyPascalCaseWord"), equals('myPascalCaseWord'));
      expect(Casing.camelCase("my_snake_case_word"), equals('mySnakeCaseWord'));
      expect(Casing.camelCase("my-kebab-case-word"), equals('myKebabCaseWord'));
      expect(Casing.camelCase("My Title Case Word"), equals('myTitleCaseWord'));
      expect(Casing.camelCase("MY_CONSTANT_CASE_WORD"), equals('myConstantCaseWord'));
      expect(Casing.camelCase("my.dot.case.word"), equals('myDotCaseWord'));
      expect(Casing.camelCase("my lower case word"), equals('myLowerCaseWord'));
      expect(Casing.camelCase("MY UPPER CASE WORD"), equals('myUpperCaseWord'));
    });

    test('pascalCase should convert various inputs to PascalCase', () {
      expect(Casing.pascalCase("my_word separated.by-multiple\\symbols"), equals('MyWordSeparatedByMultipleSymbols'));
      expect(Casing.pascalCase("myCamelCaseWord"), equals('MyCamelCaseWord'));
      expect(Casing.pascalCase("my_snake_case_word"), equals('MySnakeCaseWord'));
      expect(Casing.pascalCase("my-kebab-case-word"), equals('MyKebabCaseWord'));
      expect(Casing.pascalCase("My Title Case Word"), equals('MyTitleCaseWord'));
      expect(Casing.pascalCase("MY_CONSTANT_CASE_WORD"), equals('MyConstantCaseWord'));
      expect(Casing.pascalCase("my.dot.case.word"), equals('MyDotCaseWord'));
      expect(Casing.pascalCase("my lower case word"), equals('MyLowerCaseWord'));
      expect(Casing.pascalCase("MY UPPER CASE WORD"), equals('MyUpperCaseWord'));
    });

    test('snakeCase should convert various inputs to snake_case', () {
      expect(Casing.snakeCase("my_word separated.by-multiple\\symbols"), equals('my_word_separated_by_multiple_symbols'));
      expect(Casing.snakeCase("myCamelCaseWord"), equals('my_camel_case_word'));
      expect(Casing.snakeCase("MyPascalCaseWord"), equals('my_pascal_case_word'));
      expect(Casing.snakeCase("my-kebab-case-word"), equals('my_kebab_case_word'));
      expect(Casing.snakeCase("My Title Case Word"), equals('my_title_case_word'));
      expect(Casing.snakeCase("MY_CONSTANT_CASE_WORD"), equals('my_constant_case_word'));
      expect(Casing.snakeCase("my.dot.case.word"), equals('my_dot_case_word'));
      expect(Casing.snakeCase("my lower case word"), equals('my_lower_case_word'));
      expect(Casing.snakeCase("MY UPPER CASE WORD"), equals('my_upper_case_word'));
    });

    test('kebabCase should convert various inputs to kebab-case', () {
      expect(Casing.kebabCase("my_word separated.by-multiple\\symbols"), equals('my-word-separated-by-multiple-symbols'));
      expect(Casing.kebabCase("myCamelCaseWord"), equals('my-camel-case-word'));
      expect(Casing.kebabCase("MyPascalCaseWord"), equals('my-pascal-case-word'));
      expect(Casing.kebabCase("my_snake_case_word"), equals('my-snake-case-word'));
      expect(Casing.kebabCase("My Title Case Word"), equals('my-title-case-word'));
      expect(Casing.kebabCase("MY_CONSTANT_CASE_WORD"), equals('my-constant-case-word'));
      expect(Casing.kebabCase("my.dot.case.word"), equals('my-dot-case-word'));
      expect(Casing.kebabCase("my lower case word"), equals('my-lower-case-word'));
      expect(Casing.kebabCase("MY UPPER CASE WORD"), equals('my-upper-case-word'));
    });

    test('dotCase should convert various inputs to dot.case', () {
      expect(Casing.dotCase("my_word separated.by-multiple\\symbols"), equals('my.word.separated.by.multiple.symbols'));
      expect(Casing.dotCase("myCamelCaseWord"), equals('my.camel.case.word'));
      expect(Casing.dotCase("MyPascalCaseWord"), equals('my.pascal.case.word'));
      expect(Casing.dotCase("my_snake_case_word"), equals('my.snake.case.word'));
      expect(Casing.dotCase("my-kebab-case-word"), equals('my.kebab.case.word'));
      expect(Casing.dotCase("My Title Case Word"), equals('my.title.case.word'));
      expect(Casing.dotCase("MY_CONSTANT_CASE_WORD"), equals('my.constant.case.word'));
      expect(Casing.dotCase("my lower case word"), equals('my.lower.case.word'));
      expect(Casing.dotCase("MY UPPER CASE WORD"), equals('my.upper.case.word'));
    });

    test('constantCase should convert various inputs to CONSTANT_CASE', () {
      expect(Casing.constantCase("my_word separated.by-multiple\\symbols"), equals('MY_WORD_SEPARATED_BY_MULTIPLE_SYMBOLS'));
      expect(Casing.constantCase("myCamelCaseWord"), equals('MY_CAMEL_CASE_WORD'));
      expect(Casing.constantCase("MyPascalCaseWord"), equals('MY_PASCAL_CASE_WORD'));
      expect(Casing.constantCase("my_snake_case_word"), equals('MY_SNAKE_CASE_WORD'));
      expect(Casing.constantCase("my-kebab-case-word"), equals('MY_KEBAB_CASE_WORD'));
      expect(Casing.constantCase("My Title Case Word"), equals('MY_TITLE_CASE_WORD'));
      expect(Casing.constantCase("my.dot.case.word"), equals('MY_DOT_CASE_WORD'));
      expect(Casing.constantCase("my lower case word"), equals('MY_LOWER_CASE_WORD'));
      expect(Casing.constantCase("MY UPPER CASE WORD"), equals('MY_UPPER_CASE_WORD'));
    });

    test('titleCase should convert various inputs to Title Case', () {
      expect(Casing.titleCase("my_word separated.by-multiple\\symbols"), equals('My Word Separated By Multiple Symbols'));
      expect(Casing.titleCase("myCamelCaseWord"), equals('My Camel Case Word'));
      expect(Casing.titleCase("MyPascalCaseWord"), equals('My Pascal Case Word'));
      expect(Casing.titleCase("my_snake_case_word"), equals('My Snake Case Word'));
      expect(Casing.titleCase("my-kebab-case-word"), equals('My Kebab Case Word'));
      expect(Casing.titleCase("MY_CONSTANT_CASE_WORD"), equals('My Constant Case Word'));
      expect(Casing.titleCase("my.dot.case.word"), equals('My Dot Case Word'));
      expect(Casing.titleCase("my lower case word"), equals('My Lower Case Word'));
      expect(Casing.titleCase("MY UPPER CASE WORD"), equals('My Upper Case Word'));
    });

    test('lowerCase should convert various inputs to lower case', () {
      expect(Casing.lowerCase("my_word separated.by-multiple\\symbols"), equals('my word separated by multiple symbols'));
      expect(Casing.lowerCase("myCamelCaseWord"), equals('my camel case word'));
      expect(Casing.lowerCase("MyPascalCaseWord"), equals('my pascal case word'));
      expect(Casing.lowerCase("MY_CONSTANT_CASE_WORD"), equals('my constant case word'));
      expect(Casing.lowerCase("my-kebab-case-word"), equals('my kebab case word'));
      expect(Casing.lowerCase("my.dot.case.word"), equals('my dot case word'));
      expect(Casing.lowerCase("My Title Case Word"), equals('my title case word'));
      expect(Casing.lowerCase("my lower case word"), equals('my lower case word'));
      expect(Casing.lowerCase("MY UPPER CASE WORD"), equals('my upper case word'));
    });

    test('upperCase should convert various inputs to UPPER CASE', () {
      expect(Casing.upperCase("my_word separated.by-multiple\\symbols"), equals('MY WORD SEPARATED BY MULTIPLE SYMBOLS'));
      expect(Casing.upperCase("myCamelCaseWord"), equals('MY CAMEL CASE WORD'));
      expect(Casing.upperCase("MyPascalCaseWord"), equals('MY PASCAL CASE WORD'));
      expect(Casing.upperCase("my_snake_case_word"), equals('MY SNAKE CASE WORD'));
      expect(Casing.upperCase("my-kebab-case-word"), equals('MY KEBAB CASE WORD'));
      expect(Casing.upperCase("my.dot.case.word"), equals('MY DOT CASE WORD'));
      expect(Casing.upperCase("My Title Case Word"), equals('MY TITLE CASE WORD'));
      expect(Casing.upperCase("my lower case word"), equals('MY LOWER CASE WORD'));
      expect(Casing.upperCase("MY UPPER CASE WORD"), equals('MY UPPER CASE WORD'));
    });

    test('titleCase should correctly split and convert strings with digits at the beginning, middle, and end', () {
      expect(Casing.titleCase("123add456User789"), equals('123 Add 456 User 789'));
    });
  });
}