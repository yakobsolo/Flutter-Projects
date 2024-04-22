import 'package:flutter/material.dart';

class AvetolLiveShow extends StatefulWidget {
  const AvetolLiveShow({super.key});

  @override
  State<AvetolLiveShow> createState() => _AvetolLiveShowState();
}

class _AvetolLiveShowState extends State<AvetolLiveShow> {
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
                            "Avetol Live Channels",
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
                                return AvetolLiveChannelsWidget(indx: indx.toString());
                              }),
                    ),
                    ],
                ),
        
              );
  }
}

class AvetolLiveChannelsWidget extends StatefulWidget {
  final String indx;
  const AvetolLiveChannelsWidget({required this.indx, super.key});

  @override
  State<AvetolLiveChannelsWidget> createState() => _AvetolLiveChannelsWidgetState();
}

class _AvetolLiveChannelsWidgetState extends State<AvetolLiveChannelsWidget> {
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
                  color: const Color.fromARGB(255, 8, 59, 242),
                  borderRadius: BorderRadius.circular(15),
            
                ),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  fit: ind == "1"? BoxFit.scaleDown: BoxFit.cover,
                  image: AssetImage("images/Avetollivechannel$ind.png")),
              ),
            ),
            SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 10.0),
               child: Text("Creed 3", style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
             ),

      ],
    );
  }
}
