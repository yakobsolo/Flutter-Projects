import 'package:avetol/features/HomePage/Model/mainmoviedata.dart';
import 'package:flutter/material.dart';

class AvetolShow extends StatefulWidget {
  const AvetolShow({super.key});

  @override
  State<AvetolShow> createState() => _AvetolShowState();
}

class _AvetolShowState extends State<AvetolShow> {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(left: 30, ),    
                  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                            "Avetol Shows",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                      ),
                    SizedBox(height: 5,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                
                                itemBuilder: (context, indx) {
                                return AvetolShowsWidget(indx: indx.toString());
                              }),
                    ),
                    ],
                ),
        
              );
  }
}

class AvetolShowsWidget extends StatefulWidget {
  final String indx;
  const AvetolShowsWidget({required this.indx, super.key});

  @override
  State<AvetolShowsWidget> createState() => _AvetolShowsWidgetState();
}

class _AvetolShowsWidgetState extends State<AvetolShowsWidget> {
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
                  image: AssetImage("images/Avetolshow$ind.png")),
              ),
            ),
            SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 10.0),
               child: Text(avetolshowlist[int.parse(ind)], style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
             ),

      ],
    );
  }
}
