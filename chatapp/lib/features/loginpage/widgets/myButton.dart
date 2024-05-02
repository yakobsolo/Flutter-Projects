import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttontext;
  const MyButton({super.key, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        padding: EdgeInsets.symmetric(vertical: 25),
        // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).colorScheme.primary),
        child: Center(
            child: Text(
          buttontext,
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 16),
        )),
      
    );
  }
}
