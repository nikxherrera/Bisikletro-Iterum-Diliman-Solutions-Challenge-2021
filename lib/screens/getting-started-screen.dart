import 'package:BisikletroApp/screens/home-screen.dart';
import 'package:BisikletroApp/screens/login-screen.dart';
import 'package:flutter/material.dart';

class GettingStarted extends StatefulWidget {
  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  var txt1 = "WELCOME, BiyaHERO!";
  var txt2 =
      "You’re ready to go, start to travel and save the nature! Compete with friends, join and share your experience !";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Spacer(flex: 4),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    txt1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  txt2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                getStartedButtonBuilder(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getStartedButtonBuilder() => Container(
        child: AspectRatio(
          aspectRatio: 10 / 2,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Color(0xff3ACDDB), width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => LoginScreen()));
            },
            child: const Text("Done", style: TextStyle(color: Colors.white)),
            color: Color(0xff3ACDDB),
          ),
        ),
      );
  //3ACDDB btn color
}
