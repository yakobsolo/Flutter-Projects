import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tmdbmovie/utils/converttotext.dart';

class DetailsPage extends StatelessWidget {
  final detailslist;
  const DetailsPage({super.key, required this.detailslist});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    String checker() {
      if (detailslist["original_name"]!=null) {
        return detailslist["original_name"];
      } else if (detailslist["original_title"]!=null) {
        return detailslist["original_title"];
      }
      return '';
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image(
                image: NetworkImage("https://image.tmdb.org/t/p/w1280" +
                    detailslist['backdrop_path']),
                height: height / 1.5,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                  top: 50,
                  left: 40,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ))),
            ]),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: height / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConvertText(
                        text: checker() == ''
                            ? "Title Loading..."
                            : checker(),
                        size: 20,
                        clr: Colors.white),
                    const SizedBox(
                      height: 15,
                    ),

               
                    Expanded(
                        child: ConvertText(
                            text:  detailslist['overview']==null
                                ? "Description Loading..."
                                : detailslist['overview'],
                            size: 14,
                            clr: Colors.white70)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
