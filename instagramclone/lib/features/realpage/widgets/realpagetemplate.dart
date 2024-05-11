import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RealTemplate extends StatelessWidget {
  final Color color;
  final int likes;
  final int messeges;
  final int shares;
  final String name;
  final String quote;
  final String likedby;

  const RealTemplate(
      {super.key,
      required this.color,
      required this.likes,
      required this.messeges,
      required this.shares,
      required this.name,
      required this.quote,
      required this.likedby});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: color,
        ),
        Positioned(
            top: 50,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Reels",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Transform.rotate(
                    angle: -pi / 2,
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                    )),
              ],
            )),
        const Positioned(
            top: 50,
            right: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 30,
                )
              ],
            )),
        Positioned(
            bottom: 40,
            right: 30,
            child: Column(
              children: [
                const Icon(
                  Icons.favorite_outline_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(likes.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300)),
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.chat_bubble_outline_rounded,
                  size: 35,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(messeges.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300)),
                const SizedBox(
                  height: 20,
                ),
                Transform.rotate(
                    angle: -pi / 6,
                    child: const Icon(
                      Icons.send_outlined,
                      size: 35,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  shares.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
        Positioned(
          bottom: 40,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$quote ...",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.fade),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 151, 225, 255),
                        shape: BoxShape.circle),
                  ),
                  Text("  Liked by $likedby and $likes others",
                      style: const TextStyle(
                        color: Colors.grey,
                      )),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
