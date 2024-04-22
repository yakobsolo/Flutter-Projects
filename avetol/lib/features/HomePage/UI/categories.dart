import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(left: 30, ),    
                  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                            "Categories",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                      ),
                    SizedBox(height: 5,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 1,
                                
                                itemBuilder: (context, indx) {
                                return CategoryWidget(indx: indx.toString());
                              }),
                    ),
                    ],
                ),
        
              );
  }
}
class CategoryWidget extends StatefulWidget {
  final String indx;
  const CategoryWidget({required this.indx, super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    var  ind = widget.indx;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
              height: 162,
              margin: EdgeInsets.only(right: 20),
              width: 269,
              
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
            
                ),
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("images/categories$ind.png")),
              ),
            ),
            

      ],
    );
  }
}
