import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:realstate/features/WelcomePage/UI/onboardingScreen.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData( fontFamily: "Karla"),
      home: OnboardingScreen(),
    );
  }
}
