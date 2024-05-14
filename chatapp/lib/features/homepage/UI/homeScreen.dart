import 'package:chatapp/features/chatpage/UI/chatpage.dart';
import 'package:chatapp/features/homepage/widgets/usertile.dart';
import 'package:chatapp/features/homepage/widgets/drawerpage.dart';
import 'package:chatapp/features/services/auth_service.dart';
import 'package:chatapp/features/services/chat/chat_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final user = FirebaseAuth.instance.currentUser;

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        )),
      ),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
        stream: _chatService.getUsersStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Errof");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }

          return ListView(
            children: snapshot.data!
                .map<Widget>(
                    (userdata) => _buildUserListItem(userdata, context))
                .toList(),
          );
        });
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    // display alll users except current user
    if (userData["email"] != _auth.currentUser!.email) {
      return UserTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ChatPage(receiverEmail: userData["email"], receiverID: userData['uid'],)));
        },
      );
    } else {
      return Container();
    }
  }

 
}
