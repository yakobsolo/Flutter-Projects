import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/features/wetherepage/widgets/weatherscrean.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApp _screen = WeatherApp();

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 4));

    setState(() {
      _screen = WeatherApp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        child: ListView(
          
      
        children: [
          SizedBox(height: 100,),
          Center(child: Text("Current Weather", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)),
          _screen,
        ]
        ),
         onRefresh: _refresh),
    );
  }
}
