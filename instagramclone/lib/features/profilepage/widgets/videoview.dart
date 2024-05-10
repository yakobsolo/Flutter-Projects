import 'package:flutter/material.dart';

class ViewVideo extends StatelessWidget {
  const ViewVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: EdgeInsets.only(top: 20),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 40,
      itemBuilder: 
        (context, index) => Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 255, 213, 227),
              ),
            ),
      
    );
  }
}
