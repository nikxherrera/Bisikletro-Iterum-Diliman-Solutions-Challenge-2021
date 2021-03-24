import 'package:BisikletroApp/widgets/slidingAd-widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final primaryColor = Theme.of(context).primaryColor;

    final _tabs = [
      imageAssetBuilder("assets/images/home-slides/1.png"),
      imageAssetBuilder("assets/images/home-slides/2.png"),
      imageAssetBuilder("assets/images/home-slides/3.png"),
      imageAssetBuilder("assets/images/home-slides/4.png"),
    ];

    final _tabs2 = [
      imageAssetBuilder("assets/images/home-slides/1.png"),
      imageAssetBuilder("assets/images/home-slides/2.png"),
      imageAssetBuilder("assets/images/home-slides/3.png"),
      imageAssetBuilder("assets/images/home-slides/4.png"),
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.person), color: Colors.black, onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SlidingAd(
              height: h,
              width: w,
              primaryColor: primaryColor,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(15),
              child: imageAssetBuilder("assets/images/myday.png"),
            ),
            Container(
              height: 5,
              color: Colors.white60,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      imageAssetBuilder("assets/images/kattie.png"),
                      SizedBox(width: 20),
                      Container(
                        width: w * .7,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Share your thoughts",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.flag_rounded),
                          label: Text("Challenge")),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.photo),
                          label: Text("Photos")),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 7,
              color: Colors.white60,
            ),
            imageAssetBuilder("assets/images/post1.png"),
            imageAssetBuilder("assets/images/post2.png"),
          ],
        ),
      ),
    );
  }

  Widget imageAssetBuilder(String image) {
    return Container(
      child: Image.asset(image),
    );
  }
}
