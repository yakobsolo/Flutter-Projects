import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  
  const UserTile({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,

      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration( 
          color: Color.fromARGB(255, 211, 211, 211),
          borderRadius: BorderRadius.circular(10)

        ),
        margin: EdgeInsets.only(left: 20, top: 10, right: 20),

        child:  Row( children: [

          Icon(Icons.person, color: const Color.fromARGB(255, 66, 66, 66),),
          SizedBox(width: 5,),
          Text(text, style: TextStyle(color: const Color.fromARGB(255, 77, 77, 77)),),

        ],),
      ),
    );
  }
}
