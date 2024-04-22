import 'package:avetol/features/HomePage/Model/mainmoviedata.dart';
import 'package:flutter/material.dart';


class Exclusive extends StatefulWidget {
  const Exclusive({super.key});

  @override
  State<Exclusive> createState() => _ExclusiveState();
}

class _ExclusiveState extends State<Exclusive> {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(left: 30, ),    
                  height: 290,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                            "Exclusive",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                      ),
                    SizedBox(height: 5,),
                    Container(
                      height: 250,
                      child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                
                                itemBuilder: (context, indx) {
                                return ExclusiveWidget(indx: indx.toString());
                              }),
                    ),
                    ],
                ),
        
              );
  }
}
class ExclusiveWidget extends StatefulWidget {
  final String indx;
  const ExclusiveWidget({required this.indx, super.key});

  @override
  State<ExclusiveWidget> createState() => _ExclusiveWidgetState();
}

class _ExclusiveWidgetState extends State<ExclusiveWidget> {
  @override
  Widget build(BuildContext context) {
    var  ind = widget.indx;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
              height: 203,
              margin: EdgeInsets.only(right: 20),
              width: 361,
              
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
            
                ),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("images/Exclusive$ind.png")),
              ),
            ),
            SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 10.0),
               child: Text(exclusiveslist[int.parse(ind)], style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
             ),

      ],
    );
  }
}
