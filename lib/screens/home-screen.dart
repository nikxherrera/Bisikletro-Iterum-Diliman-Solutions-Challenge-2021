import 'package:BisikletroApp/screens/explore-page-screen.dart';
import 'package:BisikletroApp/screens/home-page-screen.dart';
import 'package:BisikletroApp/screens/tree-screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tabs = [
    HomePageScreen(),
    ExplorePageScreen(),
    Center(
      child: Container(
        child: Image.asset("assets/images/oops.png"),
      ),
    ),
    TreeScreen(),
    Center(
      child: Container(
        child: Image.asset("assets/images/oops.png"),
      ),
    ),
  ];
  Widget imageBuilder(String image) {
    return Container(
      child: Image.asset(image),
    );
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset("assets/images/home-icons/home-icon.png"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset("assets/images/home-icons/compass-icon.png"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset("assets/images/home-icons/circle-icon.png"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset("assets/images/home-icons/tree-icon.png"),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Image.asset("assets/images/home-icons/send-icon.png"),
              label: '',
            ),
          ],
          onTap: (indexx) {
            setState(() {
              _currentIndex = indexx;
            });
          },
        ),
      ),
    );
  }
}
