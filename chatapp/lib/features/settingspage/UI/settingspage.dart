import 'package:chatapp/theme/themdatanotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        
        title: const Center(child: Text("S e t t i n g s")),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 170, 170, 170),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("DarkMode"),

            CupertinoSwitch(
              
              value: Provider.of<ThemeProvider>(context, listen: false)
                    .isDarkMode, onChanged: (value) =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme())
            // CupertinoSwitch(
            //     value: Provider.of<ThemeProvider>(context, listen: false)
            //         .isDarkMode,
            //     onChanged: (value) =>
            //         Provider.of<ThemeProvider>(context, listen: false)
            //             .toggleTheme())
          ],
        ),
      ),
    );
  }
}
