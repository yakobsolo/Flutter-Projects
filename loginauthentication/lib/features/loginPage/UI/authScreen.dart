import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginauthentication/features/loginPage/UI/homeScreen.dart';
import 'package:loginauthentication/features/loginPage/UI/loginorsignup.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(
                "${snapshot.data!.email}+++++++++++++++++++++++++++++++++++++++++++");
            return HomeScreen();
          } else {
            return LoginorSignUp();
          }
        },
      
    );
  }
}
