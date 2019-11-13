# dart_casing
[![pub package](https://img.shields.io/pub/v/dart_casing.svg?color=important)](https://pub.dev/packages/dart_casing)

Dart library for changing String case style to the desired convention.

## Installation

Add this to your package's pubspec.yaml file:

```sh
dependencies:
  dart_casing: ^1.0.0
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

## License

MIT License - Copyright (c) 2019 [Jesway](https://jesway.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
