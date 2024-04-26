import "package:flutter/material.dart";
import "package:loginauthentication/features/loginPage/UI/loginScreen.dart";

void main() {
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      

      debugShowCheckedModeBanner: false,

      home: Scaffold(

        
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,

        body: LoginPage(),
        
      ),
    );
  }
}
