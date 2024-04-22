import 'package:avetol/features/HomePage/UI/Exclusives.dart';
import 'package:avetol/features/HomePage/UI/Trending.dart';
import 'package:avetol/features/HomePage/UI/advertisement.dart';
import 'package:avetol/features/HomePage/UI/avetollivechannels.dart';
import 'package:avetol/features/HomePage/UI/avetolshows.dart';
import 'package:avetol/features/HomePage/UI/categories.dart';
import 'package:avetol/features/HomePage/UI/mainmovie.dart';
import 'package:avetol/features/HomePage/UI/orginals.dart';
import 'package:avetol/features/HomePage/UI/continuewatching.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            MainMovie(),
            ContinueWatching(),
            SizedBox(height: 30,),
            Trending(),
            SizedBox(height: 40,),
            Orginals(),
            SizedBox(height: 50,),
            AdvertisementWidget(),
            SizedBox(height: 50,),
            AvetolShow(),
            SizedBox(height: 20,),
            AvetolLiveShow(),
            SizedBox(height: 20,),
            Exclusive(),
            SizedBox(height: 20,),
            Category(),
            SizedBox(
              height: MediaQuery.of(context).size.height - 340,),

          
          ],
        ),
        
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration( 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              spreadRadius: 10,
              blurRadius: 6,
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: const Color.fromARGB(255, 1, 92, 166),
          unselectedItemColor: Colors.grey,
          items: 
          [
        
            BottomNavigationBarItem(icon: Image.asset("images/homebottomnavigationicon.png", width: 40,height: 40,), label: "Home" ),
            BottomNavigationBarItem(icon: Image.asset("images/searchbottomenavigationicon.png", width: 40,height: 40,), label: "Browse" ),
            BottomNavigationBarItem(icon: Image.asset("images/livetvbottomnavigationicon.png", width: 40,height: 40,), label: "Live TV" ),
            BottomNavigationBarItem(icon: Image.asset("images/accountbottomnavigation.png", width: 40,height: 40,), label: "Account" ),
            
        
          ],
          ),
      ),
    );
  }
}
