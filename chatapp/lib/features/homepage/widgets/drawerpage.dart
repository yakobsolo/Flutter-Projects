import 'package:chatapp/features/settingspage/UI/settingspage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  signOut() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.chat,
                color: Theme.of(context).colorScheme.secondary,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: Text(
                    "H O M E",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()));
                  },
                  title: Text(
                    "S E T T I N G S",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 25),
            child: ListTile(
              onTap: () => signOut(),
              title: Text(
                "L O G  O U T",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
