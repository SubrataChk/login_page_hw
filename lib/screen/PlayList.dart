import 'package:flutter/material.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  double _currentSliderValue = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FF),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 25,
          ),
        ),
        backgroundColor: Color(0xffF8F8FF),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 400,
                width: 300,
                child: Card(
                  child: Image.asset(
                    "assets/cover/music1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let me love you",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Jhon Lennon",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "5:30",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Slider(
              activeColor: Colors.red,
              inactiveColor: Color(0xffFF4500).withOpacity(0.4),
              value: _currentSliderValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 27,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.pause,
                        color: Colors.white,
                      )),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 27,
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      // ////////////////////////////////////////////////////////////////////
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.black,
      //   iconSize: 30,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.album,
      //         ),
      //         label: "Album"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.music_note),
      //       label: "Music",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_box),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
