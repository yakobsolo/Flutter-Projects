import "package:flutter/material.dart";
import "package:tmdbmovie/features/UI/homepage.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.green
      ),
      home: Home(),
    );
  }
}
