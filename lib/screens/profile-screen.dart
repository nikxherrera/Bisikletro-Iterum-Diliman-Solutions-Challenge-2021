import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Container(
            child: Text(
              "Rewards",
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: imageBuilder("assets/images/oops.png"),
          ),
        ),
      ),
    );
  }

  Widget imageBuilder(String image) {
    return Container(
      child: Image.asset(image),
    );
  }
}
