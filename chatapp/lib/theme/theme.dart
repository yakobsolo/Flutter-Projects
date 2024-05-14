
import 'package:flutter/material.dart';


ThemeData lightMode = ThemeData(

  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200,
    primary: Color.fromARGB(255, 0, 91, 165),
    secondary: Colors.black,
    tertiary: Color.fromARGB(255, 0, 209, 7)

  )
);


ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary:  Color.fromARGB(255, 86, 182, 255),
    tertiary: Color.fromARGB(255, 0, 209, 7),
    secondary: Colors.grey
  )
);