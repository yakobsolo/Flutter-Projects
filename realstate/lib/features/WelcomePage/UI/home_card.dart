import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/Model/homecardmodel.dart';

class HomeCard extends StatelessWidget {
  final HouseModel homes;

  const HomeCard({super.key, required this.homes });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.25,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("assets/images/home_3.jpg"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 15,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$1,199",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        TextSpan(
                            text: "/month",
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Whitespace house",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Melbourne, Australia",
                      style: TextStyle(color: Colors.black26, fontSize: 18),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black12)),
              child: Transform.rotate(
                  angle: -0.7, child: Icon(Icons.arrow_downward)),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
