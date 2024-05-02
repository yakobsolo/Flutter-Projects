import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    signOut() async {
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
    }

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          actions: [
            IconButton(
                onPressed: () {
                  signOut();
                },
                icon: Icon(Icons.logout_outlined)),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Center(
          child: Text(
            "hi you have logged in as: \n ${user!.email}",
            style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 16),
          ),
        ));
  }
}
