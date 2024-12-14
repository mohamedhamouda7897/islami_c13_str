import 'package:flutter/material.dart';

class BottomNavBarItem extends StatefulWidget {
  Function callBack;

  BottomNavBarItem({required this.callBack, super.key});

  @override
  State<BottomNavBarItem> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarItem> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          widget.callBack(selectedIndex);
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: _buildNavItem("quran", 0),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem("ahadeth", 1),
            label: "Ahadeth",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem("sebha", 2),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem("ic_radio", 3),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem("dates", 4),
            label: "Time",
          ),
        ]);
  }

  Widget _buildNavItem(String imageName, int index) {
    return selectedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
                color: Color(0x99202020),
                borderRadius: BorderRadius.circular(66)),
            child: ImageIcon(
              AssetImage("assets/images/$imageName.png"),
            ),
          )
        : ImageIcon(
            AssetImage("assets/images/$imageName.png"),
          );
  }
}
