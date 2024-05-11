import 'package:flutter/material.dart';

class ViewAccount extends StatelessWidget {
  const ViewAccount({super.key});

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
                color: const Color.fromARGB(255, 156, 210, 255),
              ),
            ),
      
    );
  }
}
