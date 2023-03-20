import 'package:flutter/material.dart';


import './turf_screen.dart';
import './chat_screen.dart';
import './favorite_screen.dart';
import './profile_screeen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  
  final screen = [
    TurfScreen(),
    FavouriteScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void onPressedItem(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Create New Turf',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white,
              Colors.black87,
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
            child: Center(
              child: screen[currentIndex],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.black87,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_sharp),
                label: "Favourite",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded),
                label: "Chat",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.green,
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                onPressedItem(index);
              });
            },
            unselectedItemColor: Colors.grey[700],
            selectedItemColor: Colors.orange,
            type: BottomNavigationBarType.fixed));
  }
}
