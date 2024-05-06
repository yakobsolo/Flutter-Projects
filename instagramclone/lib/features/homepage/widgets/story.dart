import 'package:flutter/material.dart';
import 'package:instagramclone/features/homepage/data/storydata.dart';

class Story extends StatelessWidget {

  final int index;

  const Story({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: 
      
      [
        Container(

          height: 50,
          width: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade300,
          ),
        ),
        SizedBox(height: 10,),

        Text(storydata[index]),
      ],),
    );
  }
}
