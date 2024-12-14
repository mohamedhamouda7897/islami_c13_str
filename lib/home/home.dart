import 'package:flutter/material.dart';
import 'package:islami_c13_str/home/bottom_nav_bar.dart';
import 'package:islami_c13_str/home/tabs/ahadeth_tab.dart';
import 'package:islami_c13_str/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_c13_str/home/tabs/radio_tab.dart';
import 'package:islami_c13_str/home/tabs/sebha_tab.dart';
import 'package:islami_c13_str/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/${getBackgroundImage()}.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        bottomNavigationBar: BottomNavBarItem(
          callBack: (index) {
            currentIndex = index;
            setState(() {});
          },
        ),
        body: Column(
          children: [
            Image.asset("assets/images/header2.png"),
            Expanded(child: tabs[currentIndex]),
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  String getBackgroundImage() {
    switch (currentIndex) {
      case 0:
        return "home_bg";
      case 1:
        return "ahadeth_bg";
      case 2:
        return "sebha_bg";
      case 3:
        return "radio_bg";
      default:
        return "home_bg";
    }
  }
}
