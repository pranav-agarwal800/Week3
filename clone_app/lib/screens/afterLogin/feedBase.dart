import 'package:clone_app/screens/afterLogin/uploadPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';
import 'profilePage.dart';
import 'searchPage.dart';

class feedBase extends StatefulWidget {
  const feedBase({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _feedBaseState createState() => _feedBaseState();
}

class _feedBaseState extends State<feedBase> {

  int _currentIndex = 0;

  @override
  void initState(){
    super.initState();
    _currentIndex = widget.index;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
                './assets/images/icons/Home.png'
            ),
            activeIcon: Image.asset(
                './assets/images/icons/Home_filled.png'
            ),
            label: "",

          ),
          BottomNavigationBarItem(
            icon: Image.asset(
                './assets/images/icons/Search.png'
            ),
            activeIcon: Image.asset(
                './assets/images/icons/Search_filled.png'
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
                './assets/images/icons/plus.png'
            ),
            activeIcon: Image.asset(
                './assets/images/icons/plus.png'
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
                './assets/images/icons/Like.png'
            ),
            activeIcon: Image.asset(
                './assets/images/icons/Like_filled_black.png'
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              //TODO:
              // backgroundImage: AssetImage(
              //   '',
              // ),
              radius: 15,
            ),
            activeIcon: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 17,
              child: CircleAvatar(
                //TODO:
                // backgroundImage: AssetImage(
                //   '',
                // ),
                radius: 15,
              ),
            ),
            label: "",
          ),
        ],
        onTap: (indd){
          setState(() {
            if(indd != 3) _currentIndex = indd;
          });
        },
      ),
    );
  }
}

List tabs = [
  homePage(),
  searchPage(),
  uploadPage(),
  homePage(),
  profilePage()

];

