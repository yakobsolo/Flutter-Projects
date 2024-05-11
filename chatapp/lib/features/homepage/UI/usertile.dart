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
          color: Colors.grey.shade300

        ),
        margin: EdgeInsets.only(left: 20, top: 10, right: 20),

        child:  Row( children: [

          Icon(Icons.person),
          Text(text),

        ],),
      ),
    );
  }
}
