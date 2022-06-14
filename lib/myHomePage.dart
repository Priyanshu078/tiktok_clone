import 'package:flutter/material.dart';
import 'package:tiktok/pages/about.dart';
import 'package:tiktok/pages/add.dart';
import 'package:tiktok/pages/discover.dart';
import 'package:tiktok/pages/homePage.dart';
import 'package:tiktok/pages/inbox/inbox.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<BottomNavigationBarItem> pageNames = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Discover"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.add,
          size: 25,
        ),
        label: "Add"),
    BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me")
  ];

  List pages = [HomePage(), Discover(), Add(), Inbox(), About()];

  void onTap(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          onTap(index);
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: pageNames,
        backgroundColor: Colors.black,
      ),
    );
  }
}
