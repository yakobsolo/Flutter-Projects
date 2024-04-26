import 'package:flutter/material.dart';

class IconsContainer extends StatelessWidget {
  final iconpath;
  const IconsContainer({super.key, required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration( 
        // image: DecorationImage(image: AssetImage(iconpath), fit: BoxFit.scaleDown),
        color: const Color.fromARGB(255, 231, 231, 231),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white)
              ),

      child: Image(image: AssetImage(iconpath), ),
    );
  }
}
