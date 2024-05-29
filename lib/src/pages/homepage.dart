import 'package:flutter/material.dart';

import '../components/color_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.backgroundPage,
      appBar: AppBar(
        backgroundColor: ColorStyle.white,
        foregroundColor: ColorStyle.primary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            'lib/assets/Favicon.png',
          ),
        ),
        leadingWidth: 90,
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Icon(
              Icons.add_circle_outline_rounded,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 15),
            child: Icon(
              Icons.circle,
              size: 40,
            ),
          ),
        ],
        actionsIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorStyle.white,
        selectedItemColor: ColorStyle.primary,
        unselectedItemColor: ColorStyle.textNeutrals,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 24,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Busca',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/GoodayIcon.png',
              height: 40,
              width: 40,
            ),
            label: 'Gooday',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.push_pin_outlined),
            label: 'Pins',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Likes',
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [],
      ),
    );
  }
}
