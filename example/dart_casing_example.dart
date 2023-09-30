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