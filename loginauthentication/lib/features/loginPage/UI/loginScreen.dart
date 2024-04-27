
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginauthentication/features/loginPage/widgets/iconContainer.dart';
import 'package:loginauthentication/features/loginPage/widgets/myButton.dart';
import 'package:loginauthentication/features/loginPage/widgets/mytextfield.dart';
import 'package:loginauthentication/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  final Function() onTap;
  const LoginPage({super.key, required this.onTap});

    
    
  @override
  Widget build(BuildContext context) {

    final emailcontroller = TextEditingController();

    final passwordcontroller = TextEditingController();


    customErrorDialog(msg) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(child: Text(msg)),
              titleTextStyle:
                  const TextStyle(fontSize: 18, color: Colors.white),
              backgroundColor: const Color.fromARGB(255, 94, 0, 202),
            );
          });
    }

    void showErrorMessege(messege) {
      if (messege == "invalid-email") {
        customErrorDialog("Email Incorrect");
      } else if (messege == "invalid-credential ") {
        customErrorDialog("Password Incorrect");
      } else {
        customErrorDialog('Email and Password Incorrect');
      }
    }

    void signIn() async {
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailcontroller.text, password: passwordcontroller.text);

        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        showErrorMessege(e.code);
      }
    }

    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                size: 100,
                color: Color.fromARGB(255, 0, 108, 196),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome back you've been missed?",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                hinttext: "Enter User Name",
                obsucure: false,
                controller: emailcontroller,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  hinttext: "Enter Password",
                  controller: passwordcontroller,
                  obsucure: true),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    signIn();
                  },
                  child: const MyButton(buttontext: "Sign In")),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 207, 207, 207),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "Or okay rontinue with",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 207, 207, 207),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconsContainer(iconpath: "assets/Icons/google.png", onTap: () => AuthService().signInwithGoogle(),),
                  SizedBox(
                    width: 10,
                  ),
                  IconsContainer(iconpath: "assets/Icons/beta.png", onTap: () {},),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                Text(
                  "Not a member? ",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text("Register Now",
                      style: TextStyle(color: Color.fromARGB(255, 0, 187, 6))),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
