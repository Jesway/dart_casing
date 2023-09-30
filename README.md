# dart_casing
[![pub package](https://img.shields.io/pub/v/dart_casing.svg?color=important)](https://pub.dev/packages/dart_casing)

The `dart_casing` package provides various casing utilities to convert strings between different cases. Below are the supported cases with examples:

## Installation

Add this to your package's pubspec.yaml file:

```sh
dependencies:
  dart_casing: <latest version>
```

## Usage

```dart
import 'package:dart_casing/dart_casing.dart';

main()
{
  var text = "Lorem-ipsum_dolor\\SIT amet";

  // Camel Case
  print(Casing.camelCase(text));                   // loremIpsumDolorSitAmet
  print(Casing.camelCase("myPascalCaseWord"));     // myPascalCaseWord
  
  // Pascal Case
  print(Casing.pascalCase(text));                  // LoremIpsumDolorSitAmet
  print(Casing.pascalCase("myCamelCaseWord"));     // MyCamelCaseWord
  
  // Title Case
  print(Casing.titleCase(text));                   // Lorem Ipsum Dolor Sit Amet
  print(Casing.titleCase("my_snake_case_word"));   // My Snake Case Word
  
  // Snake Case
  print(Casing.snakeCase(text));                   // lorem_ipsum_dolor_sit_amet
  print(Casing.snakeCase("myCamelCaseWord"));      // my_camel_case_word
  
  // Kebab Case
  print(Casing.kebabCase(text));                   // lorem-ipsum-dolor-sit-amet
  print(Casing.kebabCase("MyPascalCaseWord"));     // my-pascal-case-word
  
  // Dot Case
  print(Casing.dotCase(text));                     // lorem.ipsum.dolor.sit.amet
  print(Casing.dotCase("myCamelCaseWord"));        // my.camel.case.word
  
  // Constant Case
  print(Casing.constantCase(text));                // LOREM_IPSUM_DOLOR_SIT_AMET
  print(Casing.constantCase("myCamelCaseWord"));   // MY_CAMEL_CASE_WORD
  
  // Lower Case
  print(Casing.lowerCase(text, separator: " "));   // lorem ipsum dolor sit amet
  print(Casing.lowerCase("MY_CONSTANT_CASE_WORD"));// my constant case word
  
  // Upper Case
  print(Casing.upperCase(text, separator: " "));   // LOREM IPSUM DOLOR SIT AMET
  print(Casing.upperCase("myCamelCaseWord"));      // MY CAMEL CASE WORD
}
```

## Notes
- The package handles various input formats, including `CamelCase`, `PascalCase`, `snake_case`, `kebab-case`, `dot.case`, `Title Case`, `CONSTANT_CASE`, and words separated by spaces or other symbols.
  
- You can also specify a custom separator for `titleCase`, `lowerCase`, and `upperCase` methods to join the words.

## Issues
Please file any issues, bugs or feature request [here](https://github.com/Jesway/Dart-Casing/issues).

## License

This project is licensed under the [MIT License](https://github.com/Jesway/Dart-Casing/blob/master/LICENSE)