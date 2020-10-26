import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/widget/bottomNav.dart';

import './widget/notification.dart' as badge;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> carMarks = [];
  List<Map<String, String>> listWidget = [];
  int current_index;

  void setNewIndex(int ind) {
    current_index = ind;
  }

  var checker;
  var check = false;
  @override
  Widget build(BuildContext context) {
    listWidget = [
      {"Wagon": "assets/images/icon1.png"},
      {"SUV": "assets/images/icon2.png"},
      {"Sedan": "assets/images/icon3.png"},
      {"Hatchback": "assets/images/icon4.png"},
    ];
    carMarks = [
      "assets/images/carmark1.jpg",
      "assets/images/carmark2.jpg",
      "assets/images/carmark3.jpg",
      "assets/images/carmark4.jpg"
    ];
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: deviceHeight / 5.06,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://thumbs.dreamstime.com/b/white-sports-car-black-background-image-shot-ultra-high-resolution-42658883.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 15),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 5),
                        child: badge.Notification()),
                  )
                ],
              ),
              Text(
                "تصفح حسب نوع السياره",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: deviceHeight / 7.59,
                  child: ListView.builder(
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                setNewIndex(index);
                              });
                            },
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          listWidget[index].values.first),
                                    ),
                                  ),
                                  Text(
                                    listWidget[index].keys.first,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: current_index == index
                                            ? Colors.blue
                                            : Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )),
                      );
                    },
                    itemCount: listWidget.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: HeaderText(19, "الكل"),
                  ),
                  HeaderText(19, "تصفح حسب الماركه"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: deviceHeight / 9.4875,
                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: deviceWidth / 4.9,
                        child: Image(
                          image: AssetImage(carMarks[index]),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                  itemCount: carMarks.length,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: HeaderText(19, "الكل")),
                    HeaderText(19, "جديد الوكالات"),
                  ],
                ),
              ),
              Container(
                width: deviceWidth / 1.568,
                padding: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: deviceWidth / 1.50,
                      height: deviceHeight / 7.59,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/audia8.png"),
                      ),
                    ),
                    Container(
                      width: deviceWidth / 1.63,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: HeaderText(14, "تبدأ من 12900 ك.د"),
                          ),
                          HeaderText(
                            17,
                            "Audi A8",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: HeaderText(19, "الكل"),
                  ),
                  HeaderText(19, "فيديو"),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 5),
                width: deviceWidth / 1.56,
                height: deviceHeight / 7.59,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/car.png"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String textt;
  final double size;
  const HeaderText(
    this.size,
    this.textt,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      textt,
      style: TextStyle(
          fontWeight: FontWeight.w600, letterSpacing: 1, fontSize: size),
    );
  }
}
