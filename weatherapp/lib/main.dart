import "package:flutter/material.dart";
import "package:weatherapp/features/wetherepage/UI/homescreen.dart";
import "package:weatherapp/features/wetherepage/widgets/weatherscrean.dart";

void main() {
  runApp(MyApp());


}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      
      home: HomeScreen(),
    );
  }
} 