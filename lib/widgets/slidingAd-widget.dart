import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class SlidingAd extends StatefulWidget {
  final width;
  final height;
  final primaryColor;

  SlidingAd({this.height, this.width, this.primaryColor});

  @override
  _SlidingAdState createState() => _SlidingAdState();
}

class _SlidingAdState extends State<SlidingAd> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final _tabs = [
      imageAssetBuilder("assets/images/home-slides/1.png"),
      imageAssetBuilder("assets/images/home-slides/2.png"),
      imageAssetBuilder("assets/images/home-slides/3.png"),
      imageAssetBuilder("assets/images/home-slides/4.png"),
    ];
    return Stack(
      //fit: StackFit.expand,
      children: [
        CarouselSlider(
          //carouselController: buttonCarouselController,
          options: CarouselOptions(
            initialPage: 0,
            height: widget.height * .25,
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          items: _tabs.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  //margin: EdgeInsets.symmetric(horizontal: 10),
                  width: widget.width,
                  child: i,
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          right: 1,
          left: 1,
          bottom: -20,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 35),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < _tabs.length; i++)
                  if (i == _currentPage)
                    buildSlideDot(true, widget.primaryColor)
                  else
                    buildSlideDot(false, widget.primaryColor)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSlideDot(bool isActive, Color primaryColor) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: isActive ? 13 : 8,
      width: isActive ? 13 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black54 : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Widget imageAssetBuilder(String image) {
    return Container(
      child: Image.asset(image),
    );
  }
}
