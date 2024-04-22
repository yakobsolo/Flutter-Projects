import 'package:avetol/data/mainmoviedata.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class MainMovie extends StatefulWidget {
  const MainMovie({super.key});

  @override
  State<MainMovie> createState() => _MainMovieState();
}

class _MainMovieState extends State<MainMovie> {
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height-85,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pagecontroller,
                      itemCount: mainmovies.length,
                      itemBuilder: (context, indx) {
                        return mainmovies[indx];
                      }),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Image(
                      width: 90,
                      height: 50,
                      image: AssetImage("images/logowhite.png")),
                ),
                Positioned(
                    top: 75,
                    left: 110,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "TV Shows",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        // SizedBox(width: 10, ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Movies",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                            ))
                      ],
                    )),
                Positioned(
                  bottom: 50,
                  left: 80,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Watch Now",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(200, 222, 222, 222),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 150,
                    child: SmoothPageIndicator(
                      controller: _pagecontroller,
                      count: mainmovies.length,
                      effect: WormEffect(
                          dotHeight: 11,
                          dotWidth: 11,
                          spacing: 12,
                          activeDotColor: Colors.white,
                          dotColor: Colors.grey),
                    ))
              ],
            );
  }
}

class MainMovieWidget extends StatelessWidget {
  
  
  const MainMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/lastofus.jpeg'),
          ),
          
        ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-85,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                 Colors.transparent, 
              Colors.transparent,
                Colors.transparent,
                Color.fromARGB(255, 60, 70, 77).withOpacity(0.3), 
                Color.fromARGB(255, 60, 70, 77).withOpacity(0.7), 
                Color.fromARGB(255, 60, 70, 77),
              ],
            ),
          ),
        ),



        Positioned(
          top: MediaQuery.of(context).size.height/1.85,
          left: 45,
          child: Container(
            height: MediaQuery.of(context).size.height/3,
          
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      width: 16,
                      height: 19,
                      
                      image: AssetImage("images/logo.png")),
                      SizedBox(width: 2,),
                    Text("SERIES", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
          
                  ],

                ),
                Image(
                  width: MediaQuery.of(context).size.width-80,
                  height: 100,
                  image: AssetImage("images/tximage.png")),

                // SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('Drama', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),),
                      SizedBox(width: 5,),

                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.white),
                      ),
                      SizedBox(width: 5,),
                      Text('Si-Fi', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),),
                      SizedBox(width: 5,),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.white),
                      ),
                      SizedBox(width: 5,),
                      Text('2 Seasons', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),),
                      SizedBox(width: 5,),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.white),
                      ),
                      SizedBox(width: 5,),
                      Text('2023', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),),
                      
                    ],
                  )

                  
              ],
            ),
          
          
          ),
        ),
        
      ]
    );
  }
}