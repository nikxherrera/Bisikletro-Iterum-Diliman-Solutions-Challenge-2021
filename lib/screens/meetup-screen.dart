import 'package:flutter/material.dart';

class MeetUpScreen extends StatefulWidget {
  @override
  _MeetUpScreenState createState() => _MeetUpScreenState();
}

class _MeetUpScreenState extends State<MeetUpScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    final detail =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacinia luctus et, senectus tincidunt mattis. Dignissim eget vitae id sed justo, eget ut. At sodales nibh at pretium. Enim tincidunt cursus vitae arcu auctor placerat tincidunt pellentesque. Quam arcu facilisis aliquam vehicula eget turpis natoque auctor at. Placerat vitae leo tempor eleifend. Sit diam, urna viverra posuere eu. Accumsan, fames aliquet habitasse risus. Turpis amet id aliquet vivamus duis bibendum. Ipsum a ultrices diam urna enim, convallis in neque.";
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
              "Challenge",
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
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: mediaQuery.width,
                      height: 180,
                      child: Image.asset(
                        'assets/images/meetup.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      right: 10,
                      child: btnBuilder("assets/images/meetup-btns.png"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                btnBuilder("assets/images/meet-join.png"),
                Container(
                  height: 5,
                  color: Colors.white60,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "EVENT DETAILS",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          detail,
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                btnBuilder("assets/images/map.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget btnBuilder(String image) {
    return Container(
      child: Image.asset(image),
    );
  }
}
