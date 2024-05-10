
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagramclone/features/homepage/data/storydata.dart';
import 'package:instagramclone/features/homepage/widgets/story.dart';
import 'package:instagramclone/features/profilepage/widgets/accountview.dart';
import 'package:instagramclone/features/profilepage/widgets/gridview.dart';
import 'package:instagramclone/features/profilepage/widgets/videoview.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      
        appBar: AppBar( 
      
          
            title:const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("jakijimmy"),
                Icon(Icons.arrow_drop_down),
      
              ],
            ), 
          actions: const [
            Icon(Icons.video_call_sharp),
      
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.add_box_outlined),
      
            
            ),
            Icon(Icons.menu),
            SizedBox(width: 10,)
          ],
        ),
      
        body: Column(
          
      
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200 ,
                          shape: BoxShape.circle,
              
                          
                        ),
                      ),
              
                      const SizedBox(height: 5,),
                      const Text("Yakob Solomon"),
                      
                      
              
                    ],
                  ),
              
                  const Column(
                    children: [
                      Text("6"),
                      SizedBox(height: 5,),
              
                      Text("posts")
                    ],
                  ),
              
                  const Column(
                    children: [
                      Text("299"),
                      SizedBox(height: 5,),
              
                      Text("followers")
                    ],
                  ),
                  
                 const Column(
                    children: [
                      Text("182"),
                      SizedBox(height: 5,),
              
                      Text("following")
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Column(
                    children: [
                      Text("I am a Flutter Developer"),
                      Text('https://github/yakobsolo', style: TextStyle(color: Color.fromARGB(255, 0, 123, 224)),)
                    ],
                  ),
                  
                  
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                  child:  Center(child: Text("Edit profile"),),
                  decoration: BoxDecoration(color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5)
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
                  child: Center(child: Text("Share profile"),),
                  decoration: BoxDecoration(color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5)
      
                  ),
                ),
              ],
            ),
      
            SizedBox(height: 20,),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storydata.length,
                itemBuilder: (context, index) => Story(index: index)),
            ),

            const TabBar(tabs: 
            [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ]
            ),


            const Expanded(
              child:  TabBarView(children: [
                ViewGrid(),
                ViewVideo(),
                ViewAccount(),
              
              ]),
            )
                    ],

            
        ),
      ),
    );
  }
}