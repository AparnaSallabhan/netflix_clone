// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List<Widget> screensList = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen()
    ];
    int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.mainBlack,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"),
           BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "Coming Soon"),
           BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            label: "Downloads"),
           BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "More")
        ],
        onTap: (value) {
          
          setState(() {
            selectedIndex = value;
          });
        },
        ),
        body: screensList[selectedIndex],
    );
  }
}