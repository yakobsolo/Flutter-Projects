
import 'package:flutter/material.dart';


ThemeData lightMode = ThemeData(

  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200,
    primary: const Color.fromARGB(255, 1, 126, 228),
    secondary: Colors.black,
    tertiary: Color.fromARGB(255, 0, 209, 7)

  )
);


ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary:  Color.fromARGB(255, 1, 116, 204),
    tertiary: Color.fromARGB(255, 0, 209, 7),
    secondary: Colors.grey
  )
);