import 'package:flutter/material.dart';
import 'package:home_work_2/screen/HomePageDesign.dart';
import 'package:home_work_2/screen/PlayList.dart';
import 'package:home_work_2/screen/Profile.dart';
import 'package:home_work_2/screen/Track.dart';

class HomePage extends StatefulWidget {
  static const String path = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currntIndex = 0;
  List<Widget> _children = [
    HomePageDesign(),
    TrackSection(),
    PlayList(),
    ProfileSection(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currntIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////////////////////////////////////////////////////////////////////
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: onTappedBar,
        currentIndex: _currntIndex,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.album,
              ),
              label: "Album"),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
      body: _children[_currntIndex],
    );
  }
}
