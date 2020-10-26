import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

var current = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xff4852C1),
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          current = value;
        });
      },
      currentIndex: current,
      items: [
        BottomNavigationBarItem(
          title: Text(
            "التأمين",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          icon: Image.asset(
            "assets/images/nav4.png",
            height: 30,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("التئمين",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          icon: Image.asset(
            "assets/images/nav3.png",
            height: 30,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("الخدمات",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          icon: Image.asset(
            "assets/images/nav2.png",
            height: 30,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("الوكالات",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          icon: Image.asset(
            "assets/images/nav1.png",
            height: 30,
          ),
        )
      ],
    );
  }
}
