import 'package:flutter/material.dart';

class Orginals extends StatefulWidget {
  const Orginals({super.key});

  @override
  State<Orginals> createState() => _OrginalsState();
}

class _OrginalsState extends State<Orginals> {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(left: 30, ),    
                  height: 460,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                       child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 43,
                          child: ClipRRect(
                            
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("images/logoblue.png") ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Orginals",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 1, 92, 166),
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color.fromARGB(255, 1, 92, 166),

                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                      ),
                    SizedBox(height: 5,),
                    Container(
                      height: 391,
                      child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                
                                itemBuilder: (context, indx) {
                                return OrginalWidget(indx: indx.toString());
                              }),
                    ),
                    ],
                ),
              );
  }
}
class OrginalWidget extends StatefulWidget {
  final String indx;
  const OrginalWidget({required this.indx, super.key});

  @override
  State<OrginalWidget> createState() => _OrginalWidgetState();
}

class _OrginalWidgetState extends State<OrginalWidget> {
  @override
  Widget build(BuildContext context) {
    var ind = widget.indx;
    return Container(
      height: 353,
      margin: EdgeInsets.only(right: 20),
      width: 255,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
            fit: BoxFit.cover, image: AssetImage("images/orginals$ind.png")),
      ),
    );
  }
}
