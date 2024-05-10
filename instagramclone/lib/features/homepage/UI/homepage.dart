import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramclone/features/homepage/data/storydata.dart';
import 'package:instagramclone/features/homepage/widgets/mainpage.dart';
import 'package:instagramclone/features/homepage/widgets/story.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        
        actions: const [Icon(Icons.favorite_outline),SizedBox(width: 20,), Icon(Icons.messenger_outline),SizedBox(width: 15,),],
      ),
      body: Padding(padding: const  EdgeInsets.symmetric(vertical: 20,
          
      ),
      
      child: Column(
        // scrollDirection: Axis.vertical,
        children: [
          
        Expanded(
          child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => MainPage(index: index,)))
        ]

      ),

      ),


    );
  }
}





