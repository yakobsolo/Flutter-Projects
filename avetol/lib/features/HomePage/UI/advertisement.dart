import 'package:flutter/material.dart';

class AdvertisementWidget extends StatelessWidget {
  const AdvertisementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 293,
              
              width: double.infinity,
              
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
            
                ),
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("images/Advertise.png")),
              
            );
  }
}