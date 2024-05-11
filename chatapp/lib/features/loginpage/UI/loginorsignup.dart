import 'package:chatapp/features/loginpage/UI/loginScreen.dart';
import 'package:chatapp/features/signuppage/UI/registerScreen.dart';
import 'package:flutter/material.dart';

class LoginorSignUp extends StatefulWidget {
  const LoginorSignUp({super.key});

  @override
  State<LoginorSignUp> createState() => _LoginorSignUpState();
}

class _LoginorSignUpState extends State<LoginorSignUp> {
  bool stateofpage = true;

  toggleState() {
    setState(() {
      stateofpage = !stateofpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (stateofpage) {
      return LoginPage(onTap: toggleState);
    } else {
      return RegisterPage(onTap: toggleState);
    }
  }
}
