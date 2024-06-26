import 'dart:math';

import 'package:chatapp/features/loginpage/widgets/mytextfield.dart';
import 'package:chatapp/features/services/chat/chat_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String receiverID;
  final String receiverEmail;
  const ChatPage(
      {super.key, required this.receiverEmail, required this.receiverID});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();

  final ChatService _chatService = ChatService();

  FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState

    myFocusNode.addListener(() {
      if (myFocusNode.hasFocus) {
        Future.delayed(
          Duration(milliseconds: 500),
          () => scrollDown(),
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myFocusNode.dispose();
    _messageController.dispose();

    super.dispose();
  }

  final ScrollController _scrollController = ScrollController();

  void scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  // send message

  void sendMessage() async {
    if (_messageController.text.isNotEmpty) {
      //send message
      print(
          "sended message________________________, ${_messageController.text}");
      await _chatService.sendMessage(
          widget.receiverID, _messageController.text);
    }

    // clear text controller
    _messageController.clear();

    scrollDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text(widget.receiverEmail)),
      ),
      body: Column(
        children: [
          // display all messages

          Expanded(
            child: _buildMessagelist(),
          ),
          _buildUserInput(),

          //user input
        ],
      ),
    );
  }

  Widget _buildMessagelist() {
    FirebaseAuth currenctUser = FirebaseAuth.instance;
    String senderID = currenctUser.currentUser!.uid;

    return StreamBuilder(
        stream: _chatService.getMessages(senderID, widget.receiverID),
        builder: (context, snapshot) {
          // errors

          if (snapshot.hasError) {
            return Text("Error");
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading....");
          }
          print("hey-----------------000000000000000 ${snapshot.data}");
          return ListView(
            controller: _scrollController,
            children:
                snapshot.data!.docs.map((doc) => _buildMessage(doc)).toList(),
          );
        });
  }

  Widget _buildMessage(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    // is current user
    FirebaseAuth currenctUser = FirebaseAuth.instance;

    bool isCurrentuser = data['senderID'] == currenctUser.currentUser!.uid;
    var alignment =
        isCurrentuser ? Alignment.centerRight : Alignment.centerLeft;

    return Container(
        alignment: alignment,
        child: Column(
          crossAxisAlignment:
              isCurrentuser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: isCurrentuser
                        ? const Color.fromARGB(255, 199, 255, 201)
                        : const Color.fromARGB(255, 248, 206, 255)),
                child: Text(data["message"])),
          ],
        ));
  }

  Widget _buildUserInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: MyTextField(
            focusnode: myFocusNode,
            controller: _messageController,
            hinttext: "Type a message",
            obsucure: false,
          )),
          Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: IconButton(
                  onPressed: sendMessage,
                  icon: Transform.rotate(
                      angle: pi / 2, child: Icon(Icons.arrow_upward)))),
        ],
      ),
    );
  }
}
