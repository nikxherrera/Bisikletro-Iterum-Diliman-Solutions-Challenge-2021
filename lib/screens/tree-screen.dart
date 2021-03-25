import 'dart:ui';

import 'package:BisikletroApp/screens/reward-screen.dart';
import 'package:flutter/material.dart';

class TreeScreen extends StatefulWidget {
  @override
  _TreeScreenState createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var mq = MediaQuery.of(context);
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
            margin: EdgeInsets.only(left: 15),
            child: Text(
              "Rewards",
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            FlatButton(
              child: const Text("Referral"),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: mediaQuery.width,
                      height: mediaQuery.height * .35,
                      child: Image.asset(
                        'assets/images/tree-imgs/bg.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      top: 1,
                      child: Container(
                          width: mediaQuery.width * .35,
                          height: mediaQuery.height * .35,
                          child: imageBuilder(
                              "assets/images/tree-imgs/reward.png")),
                    ),
                    Positioned(
                      bottom: 35,
                      child: Container(
                        child: Text(
                          "100 Points",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        child: Text(
                          "as of March 29, 2021",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                imageBuilder("assets/images/tree-imgs/selection.png"),
                Container(
                  width: mediaQuery.width * .9,
                  height: mediaQuery.height * 1.15,
                  child: GridView.count(
                    primary: false,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/shimano.png',
                          points: '400',
                          text: '10 % off \n Shimano Gears',
                          doubleLayer: true,
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/seed.png',
                          points: '10',
                          text: 'Vegetable Seed',
                          ctx: context),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => RewardScreen()));
                        },
                        child: ticketBuilder(
                            image: 'assets/images/tree-imgs/tree.png',
                            points: '50',
                            text: 'Narra Tree',
                            ctx: context),
                      ),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/tree.png',
                          points: '50',
                          text: 'Mahogany Tree',
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/shimano.png',
                          points: '100',
                          text: '10 % off \n Shimano Gears',
                          doubleLayer: true,
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/hotpot.png',
                          points: '10',
                          text: 'Food Donation',
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/tree.png',
                          points: '50',
                          text: 'Name a tree',
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/donut.png',
                          points: '50',
                          text: '5% off Food discount',
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/ticket.png',
                          points: '100',
                          text: 'Raffle ticket',
                          ctx: context),
                      ticketBuilder(
                          image: 'assets/images/tree-imgs/mcdo.png',
                          points: '50',
                          text: '5% off Food discount',
                          ctx: context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ticketBuilder(
      {String image,
      String points,
      String text,
      BuildContext ctx,
      bool doubleLayer = false}) {
    var mediaQuery = MediaQuery.of(ctx).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: mediaQuery.height * .40,
          child: Image.asset(
            "assets/images/tree-imgs/v-base.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          child: Container(
            height: mediaQuery.height * .07,
            width: mediaQuery.width * .15,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: doubleLayer ? 60 : 70,
          child: Text(
            text,
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
          bottom: 19,
          child: Text(
            points + " points to redeem",
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget imageBuilder(String image) {
    return Container(
      child: Image.asset(
        image,
      ),
    );
  }
}
