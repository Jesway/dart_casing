# dart_casing
[![pub package](https://img.shields.io/pub/v/dart_casing.svg?color=important)](https://pub.dev/packages/dart_casing)

Dart library for changing String case style to the desired convention.

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

  print(Casing.camelCase(text));                   // loremIpsumDolorSitAmet
  print(Casing.pascalCase(text));                  // LoremIpsumDolorSitAmet
  print(Casing.titleCase(text));                   // Lorem Ipsum Dolor Sit Amet
  print(Casing.titleCase(text, separator: "_"));   // Lorem_Ipsum_Dolor_Sit_Amet
  print(Casing.snakeCase(text));                   // lorem_ipsum_dolor_sit_amet
  print(Casing.paramCase(text));                   // lorem-ipsum-dolor-sit-amet
  print(Casing.constantCase(text));                // LOREM_IPSUM_DOLOR_SIT_AMET
  print(Casing.lowerCase(text, separator: " "));   // lorem ipsum dolor sit amet
  print(Casing.upperCase(text, separator: " "));   // LOREM IPSUM DOLOR SIT AMET
}
```

## Issues
Please file any issues, bugs or feature request [here](https://github.com/bratan/dart_casing/issues).

## License

This project is licensed under the [MIT License](https://github.com/bratan/dart_casing/blob/master/LICENSE)

## Author
This Dart package is developed by [Florin Bratan](https://github.com/bratan). You can contact me at <florin@leadcode.dev>
