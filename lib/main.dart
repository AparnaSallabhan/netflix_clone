// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/splash_screen/splash_screen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen() ,
    );
  }
}