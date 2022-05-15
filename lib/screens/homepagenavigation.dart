import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";
import "home/homepage.dart";
import "home/favorite.dart";
import "home/profile.dart";
import "home/recent.dart";


class Homepagenavigation extends StatefulWidget {
  const Homepagenavigation({Key? key}) : super(key: key);

  @override
  State<Homepagenavigation> createState() => _HomepagenavigationState();
}

class _HomepagenavigationState extends State<Homepagenavigation> {
  List<Widget> pages = [
    Homepage(),
    Favorite(),
    Profile(),
    Recent(),

  ];
  int _currentIndex = 0;

  void changepage(int index) {
    setState(() {
      
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: changepage,
        elevation: 0,
        selectedItemColor: Color.fromRGBO(250, 74, 12, 1),
        
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        unselectedItemColor: Color.fromRGBO(173, 173, 175, 1),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/heart.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/user.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/recent.png', color: Colors.black.withOpacity(0.3)),
            label: ""
          )
        ]
      ),
      body: pages[_currentIndex],

    );
    
  }
}