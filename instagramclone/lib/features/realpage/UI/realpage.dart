import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RealPage extends StatelessWidget {
  const RealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView( 
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}