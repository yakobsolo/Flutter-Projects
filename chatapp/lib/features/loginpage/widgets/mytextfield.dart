import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final FocusNode? focusnode;
  final String hinttext;
  final controller;
  final bool obsucure;
  const MyTextField(
      {super.key,
      required this.hinttext,
      required this.controller,
      required this.obsucure, this.focusnode});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        obscureText: obsucure,
        controller: controller,
        focusNode: focusnode,
        cursorColor: Theme.of(context).colorScheme.secondary,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hinttext,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
