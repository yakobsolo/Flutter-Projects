import 'package:avetol/features/HomePage/Model/mainmoviedata.dart';
import 'package:flutter/material.dart';

class ContinueWatching extends StatefulWidget {
  const ContinueWatching({super.key});

  @override
  State<ContinueWatching> createState() => _ContinueWatchingState();
}

class _ContinueWatchingState extends State<ContinueWatching> {
  @override
  Widget build(BuildContext context) {
    return Stack(
            
              children: [
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                      Color.fromARGB(255, 32, 36, 40),
                       Color.fromARGB(255, 32, 36, 40).withOpacity(0.6),
                      Colors.transparent,
                      Colors.transparent,
                    ])
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(left: 30, ),      
                  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                            "Continue Watching",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                      ),
                    SizedBox(height: 5,),
                    Container(
                      height: 199,
                      child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                
                                itemBuilder: (context, indx) {
                                return ContinueWatchingWidget(indx: indx.toString());
                              }),
                    ),
                          
                  
                        
                    ],
                  ),
                ),
              ],
              
           );
  }
}

class ContinueWatchingWidget extends StatefulWidget {
  final String indx;
  const ContinueWatchingWidget({required this.indx, super.key});

  @override
  State<ContinueWatchingWidget> createState() => _ContinueWatchingWidgetState();
}

class _ContinueWatchingWidgetState extends State<ContinueWatchingWidget> {
  @override
  Widget build(BuildContext context) {
    var  ind = widget.indx;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
              height: 162,
              margin: EdgeInsets.only(right: 20),
              width: 269,
              
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
            
                ),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("images/continuewatchingiamge$ind.png")),
              ),
            ),
            SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 10.0),
               child: Text(continuelist[int.parse(ind)], style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
             ),

      ],
    );
  }
}
