import 'package:BisikletroApp/screens/getting-started-screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:BisikletroApp/screens/home-screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {                    

    Timer(
      Duration(seconds: 3),
      () => {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => GettingStarted(),
          ),
        )
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset(
            'assets/images/logo1.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}