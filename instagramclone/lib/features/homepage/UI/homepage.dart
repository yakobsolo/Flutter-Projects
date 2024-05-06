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
        
        actions: [Icon(Icons.add),SizedBox(width: 20,), Icon(Icons.favorite),SizedBox(width: 15,),],
      ),
      body: Padding(padding: EdgeInsets.symmetric(vertical: 20,
          
      ),
      
      child: Column(
        // scrollDirection: Axis.vertical,
        children: [
          Container(
          height: 100,
        
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: storydata.length,
            itemBuilder: ((context, index) => Story(index:index))),
        ),

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





