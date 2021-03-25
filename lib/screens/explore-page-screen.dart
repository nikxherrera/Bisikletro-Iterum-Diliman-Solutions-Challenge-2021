import 'package:BisikletroApp/screens/club-screen.dart';
import 'package:BisikletroApp/screens/meetup-screen.dart';
import 'package:BisikletroApp/widgets/slidingAd-widget.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class ExplorePageScreen extends StatefulWidget {
  @override
  _ExplorePageScreenState createState() => _ExplorePageScreenState();
}

class _ExplorePageScreenState extends State<ExplorePageScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Explore",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.person), color: Colors.black, onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SlidingAd(
                height: h,
                width: w,
                primaryColor: primaryColor,
              ),
              SizedBox(height: 20),
              textBuilder("Popular near you", 18, 8),
              Container(
                height: h * .2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    imageAssetBuilder("assets/images/club-slides/1.png"),
                    imageAssetBuilder("assets/images/club-slides/2.png"),
                    imageAssetBuilder("assets/images/club-slides/3.png"),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => ClubScreen(),
                          ),
                        );
                      },
                      child: imageAssetBuilder(
                        "assets/images/club-slides/4.png",
                      ),
                    ),
                    imageAssetBuilder("assets/images/club-slides/5.png"),
                    imageAssetBuilder("assets/images/club-slides/6.png"),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Challenges",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 3, left: 10),
                child: Text(
                  "Based on your current location",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              challengeBuilder("assets/images/challenges/1.png"),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => MeetUpScreen()));
                },
                child: challengeBuilder("assets/images/challenges/2.png"),
              ),
              challengeBuilder("assets/images/challenges/3.png"),
              challengeBuilder("assets/images/challenges/4.png"),
              challengeBuilder("assets/images/challenges/5.png"),
            ],
          ),
        ),
      ),
    );
  }

  Widget textBuilder(String text, double size, double padding) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(padding),
      child: Text(
        text,
        style: TextStyle(fontSize: size),
      ),
    );
  }

  Widget imageAssetBuilder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Image.asset(image),
    );
  }

  Widget challengeBuilder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Image.asset(image),
    );
  }
}
