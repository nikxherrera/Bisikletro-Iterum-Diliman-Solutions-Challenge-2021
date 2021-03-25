import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: imageBuilder(
                  'assets/images/tree-imgs/r1.png',
                ),
              ),
              imageBuilder("assets/images/tree-imgs/r2.png"),
            ],
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
