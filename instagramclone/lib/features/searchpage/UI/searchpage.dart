import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
          
          title : Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, ),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5),
                  child: Icon(Icons.search),
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.grey,
                    controller: searchcontroller,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Search"),
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
        body: GridView.builder(
            // padding: EdgeInsets.only(top: 20),
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 40,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 255, 171, 199),
                  ),
                ))));
  }
}
