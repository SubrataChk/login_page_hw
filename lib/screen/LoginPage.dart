import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:home_work_2/screen/HomePage.dart';
import 'package:home_work_2/screen/SignUp.dart';

import 'package:home_work_2/widget/CustomTextField.dart';

import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  static const String path = "LoginPage";
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F3F3),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width * 3,
                // color: Colors.black,
                child: Lottie.asset("assets/images/login.json"),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  Text(
                    "Log in to your existant account......",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [
                    CustomTextField(
                      keyWord: true,
                      obSecure: false,
                      hintText: "Email",
                      labelText: "Enter your Email..",
                      icons: Icon(Icons.email),
                    ),
                    CustomTextField(
                      keyWord: true,
                      obSecure: true,
                      hintText: "Password",
                      labelText: "Enter your Password",
                      icons: Icon(Icons.vpn_key),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff082032)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.path);
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2.4,
                  decoration: BoxDecoration(
                    color: Color(0xff003638),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              // CustomButton(
              //   title: "Login",
              //   color: Color(0xff003638),
              //   onPressed: () {
              //     // Navigator.pushNamed(context, SignUp.path);
              //   },
              // ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Or connect using",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/facebook.jpg")),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6),
                          ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/google.jpg")),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6),
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.path);
                        // Navigator.pushNamed(context, HomePage.path);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFF4848),
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
