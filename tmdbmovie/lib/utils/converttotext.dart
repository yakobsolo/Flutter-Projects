import "package:flutter/material.dart";

class ConvertText extends StatelessWidget {
  final String text;
  final double size;
  final Color clr;
  
  const ConvertText({super.key, required this.text, required this.size, required this.clr});

  @override
  Widget build(BuildContext context) {
    
    return Text("$text", style: TextStyle(color: clr, fontSize: size, overflow: TextOverflow.clip),);
  }
}
