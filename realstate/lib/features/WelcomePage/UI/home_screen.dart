
import "package:flutter/material.dart";
import "package:realstate/Model/homecardmodel.dart";
import "package:realstate/data/homecarddata.dart";
import "package:realstate/features/WelcomePage/UI/home_card.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        width: width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 246, 245, 245),
            borderRadius: BorderRadius.circular(25)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 40, left: 15, right: 15, bottom: 100),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(width: 1, color: Colors.black12)),
                        child: Icon(Icons.menu),
                      ),
                      const Column(
                        children: [
                          Text(
                            "Current location",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 16),
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
                                    fontWeight: FontWeight.bold, fontSize: 20),
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
                            border:
                                Border.all(width: 1, color: Colors.black12)),
                        child: Icon(Icons.tune),
                      ),
                    ],
                  ),
                  SizedBox(
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
                                hintStyle: TextStyle(color: Colors.black12)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: height * 0.15,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage("assets/images/home_7.jpg"),
                            fit: BoxFit.cover)),
                    child: Column(
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
                              color: Color.fromARGB(187, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,

                    itemBuilder: (context, indx) {
                    return HomeCard(homes: HouseModel(name: HomeData.homedata[indx]["name"], address: HomeData.homedata[indx]["address"], price: HomeData.homedata[indx]["price"],));
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
