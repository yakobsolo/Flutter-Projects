import 'package:flutter/material.dart';
import 'package:instagramclone/features/homepage/UI/homepage.dart';
import 'package:instagramclone/features/searchpage/UI/searchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedindex = 0;
    void _onTap(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    final List pages = [
      HomePage(),
      SearchPage(),
      Center(
        child: Text("reals"),
      ),
      Center(
        child: Text("shop"),
      ),
      Center(
        child: Text("profile"),
      ),
    ];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.gr),

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // backgroundColor: Colors.black,
        body: pages[_selectedindex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "reals"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ],
        ),
      ),
    );
  }
}
