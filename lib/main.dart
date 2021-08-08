import 'package:flutter/material.dart';
import 'package:home_work_2/screen/HomePage.dart';

// import 'package:home_work_2/screen/HomePageDesign.dart';
import 'package:home_work_2/screen/LoginPage.dart';
import 'package:home_work_2/screen/SignUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home Work Two",
      // home: Extra(),
      initialRoute: LoginPage.path,

      routes: {
        LoginPage.path: (context) => LoginPage(),
        HomePage.path: (context) => HomePage(),
        SignUp.path: (context) => SignUp()
      },
    );
  }
}
