import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagramclone/features/realpage/widgets/realpagetemplate.dart';

class RealPage extends StatelessWidget {
  const RealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          RealTemplate(
              color: Color.fromARGB(255, 255, 245, 187),
              likes: 405,
              messeges: 25,
              shares: 11,
              name: "jacobzuma",
              quote: "you have to come to babogaya",
              likedby: "Dagi"),
          RealTemplate(
              color: Color.fromARGB(255, 255, 193, 188),
              likes: 5389,
              messeges: 102,
              shares: 11,
              name: "mamas",
              quote: "what a day😊",
              likedby: "Dagi"),
          RealTemplate(
              color: Color.fromARGB(255, 255, 190, 212),
              likes: 405,
              messeges: 25,
              shares: 11,
              name: "jacobzuma",
              quote: "you have to come to babogaya",
              likedby: "Dagi"),
           RealTemplate(
              color: Color.fromARGB(255, 167, 198, 255),
              likes: 5389,
              messeges: 102,
              shares: 11,
              name: "mamas",
              quote: "what a day😊",
              likedby: "Dagi"),
          RealTemplate(
              color: Color.fromARGB(255, 192, 255, 218),
              likes: 405,
              messeges: 25,
              shares: 11,
              name: "jacobzuma",
              quote: "you have to come to babogaya",
              likedby: "Dagi"),
         RealTemplate(
              color: Color.fromARGB(255, 231, 179, 255),
              likes: 5389,
              messeges: 102,
              shares: 11,
              name: "mamas",
              quote: "what a day😊",
              likedby: "Dagi"),
        ]
      ),
    );
  }
}
