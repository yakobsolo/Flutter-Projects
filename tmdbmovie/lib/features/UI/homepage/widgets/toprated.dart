import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:tmdbmovie/utils/converttotext.dart";

class TopRatedMovies extends StatelessWidget {
  final List topratedmovies;
  const TopRatedMovies({super.key, required this.topratedmovies});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        height: height /3,
       
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: topratedmovies.length,
          itemBuilder: (context, indx) {
            
           

            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                  
                    },
                     
                    child: Ink(
                      height: height/4 ,
                     width: width/2.3,
                      
                      
                      decoration: BoxDecoration(color: Color.fromARGB(255, 78, 78, 78 ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage("https://image.tmdb.org/t/p/w500" + topratedmovies[indx]['poster_path']),fit: BoxFit.cover,),),
              
                      ),
                      
                    ),
                  
                  const SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      width: width/2.3,
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: ConvertText(text: topratedmovies[indx]['original_title']==null?"Loading...": topratedmovies[indx]["original_title"], size: 16, clr: const Color.fromARGB(255, 219, 217, 217))),
                  )
                ],
              ),
            );
          }),
    );
  }
}
