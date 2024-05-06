import 'package:flutter/material.dart';
import 'package:instagramclone/features/homepage/data/storydata.dart';

class MainPage extends StatelessWidget {
  final int index;
  
  const MainPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration( 
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(40),
                            
                    ),
                    
                  ),

                  SizedBox(width: 5,),

                  Text(storydata[index]),
                ],
              ),


          
              Icon(Icons.more_horiz)
          
          
          ],),

        ),

        Container(
          height: 300,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 20,),

        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                 Icon(Icons.favorite),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(Icons.chat),
              ),
              Icon(Icons.share),
              ],),
             
              Icon(Icons.bookmark),
              
          
            ],
          
          
          ),


        ),
        const SizedBox(height: 20,),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text.rich( 
                // style: TextStyle(fontWeight: FontWeight.bold),
              TextSpan(text: "Liked by " ,
              children: [
                  TextSpan(text: "yakob ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  TextSpan(text: "ans ", style: TextStyle(color: Colors.black)),
                  TextSpan(text: "others ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
              

              ]),
              ),
              
              SizedBox(height: 5,),

              Text.rich( 
                style: TextStyle(fontWeight: FontWeight.bold),
              TextSpan(text: "Mosaic Hotel" ,
              children: [
                  TextSpan(text: " what i a day the hotel is great, specially i recommend the spa, after you hit the gym", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black))
              
              
              ]),
              ),

              SizedBox(height: 15,),
            ],
          ),
        )
      ],
    );
  }
}
