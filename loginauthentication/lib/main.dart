import "package:flutter/material.dart";
import 'package:loginauthentication/features/loginPage/UI/authScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: AuthScreen(),
      ),
    );
  }
}
