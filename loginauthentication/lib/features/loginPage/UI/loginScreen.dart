import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginauthentication/features/loginPage/widgets/iconContainer.dart';
import 'package:loginauthentication/features/loginPage/widgets/mytextfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logincontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    return SafeArea(
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
            Text(
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
              controller: logincontroller,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
                hinttext: "Enter Password",
                controller: passwordcontroller,
                obsucure: true),

          const SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            
              GestureDetector(
                onTap: () {},
                child: Text("Forgot Password?", style: TextStyle(color: Colors.grey),))
            ],),
          ),
        const SizedBox(height: 20,),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(vertical: 25),
                                // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 0, 113, 206)
                                ),
                                child: Center(child: Text("Sign In", style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)),
                              ),
                  ),

            const SizedBox(height: 50,),

            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:  Row(
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
                    child: Text("Or Continue with", style: TextStyle(color: Colors.grey),),
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
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                IconsContainer(iconpath: "assets/Icons/google.png"),
                const SizedBox(width: 10,),
                IconsContainer(iconpath: "assets/Icons/beta.png"),


              ],
            ),

            SizedBox(height: 50,),

            

            const Center(
              child: Text.rich(
                TextSpan( 
                  text: "Not a member? ",
                  style: TextStyle(color: Colors.grey),
              
                  children: [
              
                    TextSpan(text: "Register Now", style: TextStyle(color: const Color.fromARGB(255, 0, 187, 6)))
                  ]
                )
              ),
            )



          ],
        ),
      ),
    );
  }
}
