import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:realstate/Model/homecardmodel.dart";
import "package:realstate/data/homecarddata.dart";
import "package:realstate/features/WelcomePage/UI/home_card.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // final  controller = ScrollController();

    int _selecteditem = 0;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        width: width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 246, 245, 245),
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 0),
          child: Stack(children: [
            CustomScrollView(slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Colors.black12)),
                                child: Icon(Icons.menu),
                              ),
                              const Column(
                                children: [
                                  Text(
                                    "Current location",
                                    style: TextStyle(
                                        color: Colors.black26, fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        "Melbourne, Aus",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Colors.black12)),
                                child: Icon(Icons.tune),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.search,
                                  color: Colors.black26,
                                  size: 24,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                        hintText: "Search for dream home",
                                        hintStyle:
                                            TextStyle(color: Colors.black12)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/home_7.jpg"),
                                    fit: BoxFit.cover)),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "GET YOUR 10% \n CASHBACK",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\' Expired 20 Apr 2022",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(187, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ]),
                  )
                ]),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: HomeData.homedata.length, (context, indx) {
                  return HomeCard(
                      homes: HouseModel(
                    name: HomeData.homedata[indx]["name"],
                    address: HomeData.homedata[indx]["address"],
                    price: HomeData.homedata[indx]["price"],
                  ));
                }),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: height / 2,
                ),
              )
            ]),
            Positioned(
              bottom: 20,
              child: Container(
                // margin: EdgeInsets.only(right: 50),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: width - 50,
                height: height * 0.09,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    InkWell(
                      focusColor: Colors.red,
                      highlightColor: Colors.red,
                      onTap: () {
                        print("home");
                      },
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("dashboard");
                      },
                      child: Icon(
                        Icons.dashboard_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle tap here
                        print('InkWell tapped!');
                      },
                      child: Icon(
                        Icons.favorite_outline,
                        size: 25,
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("profile");
                      },
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/avatar.jpg")))),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
