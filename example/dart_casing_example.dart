import 'package:dart_casing/dart_casing.dart';

main()
{
  var text = "Lorem-ipsum_dolor\\SIT amet";

  print(Casing.camelCase(text));                  // loremIpsumDolorSitAmet
  print(Casing.pascalCase(text));                 // LoremIpsumDolorSitAmet
  print(Casing.titleCase(text));                  // Lorem Ipsum Dolor Sit Amet
  print(Casing.titleCase(text, separator: "_"));  // Lorem_Ipsum_Dolor_Sit_Amet
  print(Casing.snakeCase(text));                  // lorem_ipsum_dolor_sit_amet
  print(Casing.paramCase(text));                  // lorem-ipsum-dolor-sit-amet
  print(Casing.constantCase(text));               // LOREM_IPSUM_DOLOR_SIT_AMET
  print(Casing.lowerCase(text, separator: " "));  // lorem ipsum dolor sit amet
  print(Casing.upperCase(text, separator: " "));  // LOREM IPSUM DOLOR SIT AMET
}
