import 'package:flutter/material.dart';

class ClubScreen extends StatefulWidget {
  @override
  _ClubScreenState createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> {
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
                imageBuilder("assets/images/club-imgs/3.png"),
                imageBuilder("assets/images/club-imgs/club-btn.png"),
                Container(
                  height: 5,
                  color: Colors.white60,
                ),
                imageBuilder("assets/images/club-imgs/event.png"),
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
                          imageBuilder("assets/images/kattie.png"),
                          SizedBox(width: 20),
                          Container(
                            width: mediaQuery.width * .7,
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
                imageBuilder("assets/images/club-imgs/1.png"),
                imageBuilder("assets/images/club-imgs/2.png"),
                Container(
                  height: 5,
                  color: Colors.white60,
                ),
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

  Widget imageBuilder(String image) {
    return Container(
      child: Image.asset(image),
    );
  }
}
