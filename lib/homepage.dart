import 'package:flutter/material.dart';
import 'package:ui_travel/camerascreen.dart';

import 'dashboardpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
  with SingleTickerProviderStateMixin {
    var selectedItem = 0;

    List children = [
      DashboardPage(),
      DashboardPage(),
      CameraScreen(),
      DashboardPage(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: children[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Color(0xFF1B1B1B),
        selectedItemColor:Colors.green,
        iconSize: 27.0,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: Color(0xFF1B1B1B)),
        unselectedItemColor: Color(0xFF888888),
        onTap: (currIndex){
          setState(() {
            selectedItem = currIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height:5.0 ,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
            ) 
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.search),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height:5.0 ,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
            ) 
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.camera_alt),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height:5.0 ,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
            ) 
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.person_outline),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height:5.0 ,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
            ) 
          )
        ],
        ),
      
    );
  }
}