import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meat_recipes/screens/home/home_screen.dart';

class RecipeMeatSplashScreen extends StatefulWidget {
  const RecipeMeatSplashScreen({Key? key}) : super(key: key);

  @override
  _RecipeMeatSplashScreenState createState() => _RecipeMeatSplashScreenState();
}

class _RecipeMeatSplashScreenState extends State<RecipeMeatSplashScreen> {
  bool _checkUser = true;

  @override
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), NavigatorPage);
  }

  void NavigatorPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.3),
                  Color.fromRGBO(0, 0, 0, 0.4)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: _height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: _height / 5)),
                  Text(
                    "Welcome To",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Heart",
                      fontSize: 45.0,
                    ),
                  ),

                  /// Animation text Treva Shop to choose Login with Hero Animation (Click to open code)
                  Hero(
                    tag: "Treva",
                    child: Text(
                      "Recipe Meat",
                      style: TextStyle(
                        fontFamily: 'Heart',
                        fontWeight: FontWeight.w500,
                        fontSize: 80.0,
                        letterSpacing: 4.4,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
