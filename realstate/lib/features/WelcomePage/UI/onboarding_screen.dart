import 'package:flutter/material.dart';

import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: height * 0.57,
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Image(
                    image: AssetImage("assets/images/home_4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: width * 0.35,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Sohouse",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Discover dream house from smartPhone",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Teh No. 1 App for Searching and finding the most suitable house with you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black45,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              print("hi");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage()));
            },
            child: Container(
              width: width * 0.6,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Already have an account?",
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            const SizedBox(
              width: 5,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Log in ",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
