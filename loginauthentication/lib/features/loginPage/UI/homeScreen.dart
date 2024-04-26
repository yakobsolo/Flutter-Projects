import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    signOut() async {
      await FirebaseAuth.instance.signOut();
    }

    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 140, 203, 255),
          actions: [
            IconButton(
                onPressed: () {
                  signOut();
                },
                icon: Icon(Icons.logout_outlined)),


                SizedBox(width: 20,)
          ],
        ),
        body:  Center(
          child: Text(
            "hi you have logged in as: \n ${user!.email}" ,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ));
  }
}
