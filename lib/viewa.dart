import 'package:flutter/material.dart';
import 'pages/weather.dart';
import 'pages/time.dart';
import 'pages/profile.dart';
import 'httprequests.dart';
import 'profile/sleep.dart';
import 'main.dart';
class Viewa extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Viewa();
  }
}

class _Viewa extends State<Viewa> {
  void initState(){
    API.getALL();
    API.getProfile();
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    ProfilePage(),
    TimePage(),
    WeatherPage()
  ];

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
      /*appBar: AppBar(
        title: Text('My Flutter App'),
      ),*/
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('Times'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.cloud_queue),
              title: Text('Weather')
          )
        ],
      )),
    );
  }
  void onTabTapped(int index) {

    setState(() {
      if(index == 0 || index == 2){
        glob.killt = 1;
      }else if (index == 1){
        glob.killt = 0;
      }
      _currentIndex = index;
    });
  }
}