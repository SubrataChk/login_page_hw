import 'package:flutter/material.dart';

class TrackSection extends StatefulWidget {
  const TrackSection({Key? key}) : super(key: key);

  @override
  _TrackSectionState createState() => _TrackSectionState();
}

class _TrackSectionState extends State<TrackSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Upcoming Album Section",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CircularProgressIndicator(
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
