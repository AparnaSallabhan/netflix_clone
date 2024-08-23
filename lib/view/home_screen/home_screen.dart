// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_poster_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopTenSection(),
            SizedBox(height: 11,),
            _buildAddIconSection(),
            SizedBox(height:17 ,),
            CustomPosterBuilder(
              title: "Previews",
              isCircle: true,
              width: 102,
              imagesList: DummyDb.imagesList1,
              ),
            CustomPosterBuilder(
              title: "Continue Watching for Emenalo",
              imagesList: DummyDb.imagesList1,
              isInfovisible: true,
              ),
            CustomPosterBuilder(
              title: "Popular On Netflix",
              imagesList: DummyDb.imagesList1,
              ),
            CustomPosterBuilder(
              title: "Netflix Originals",
              width: 154.04,
              height: 251,
              imagesList: DummyDb.imagesList1,
              )
          ],
        ),
      ),
    );
  }

  Widget _buildAddIconSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 54,),
                    Column(
                      children: [
                        Icon(Icons.add,color: ColorConstants.white,),
                        Text("My List",style: TextStyle(fontSize: 13.64,color: ColorConstants.white),)
                      ],
                    ),
                    Container(
                      width: 110.63,
                      height: 45,

                      decoration: BoxDecoration(
                      color: Color(0xffc4c4c4),
                      borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow,color: ColorConstants.mainBlack,),
                          SizedBox(width: 15,),
                          Text("Play",style: TextStyle(fontSize: 20.46,color: ColorConstants.mainBlack),)
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(Icons.info_outline,color: ColorConstants.white,),
                        Text("Info",style: TextStyle(fontSize: 13.46,color: ColorConstants.white),)
                      ],
                    ),
                    SizedBox(width: 62,)
                  ],
                );
  }


  Widget _buildTopTenSection() {
    return Stack(
          children: [
            Container(
              height: 415,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/homescreen_pic1.png"))),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 40,top: 45),
              height: 415,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                    ColorConstants.mainBlack,
                    Colors.transparent,
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        ImageConstants.netflixIcon,
                        width: 53,
                        height: 57,
                      ),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                            fontSize: 17.2,                        
                            color: ColorConstants.white),
                      ),
        
                      Text(
                        "Movies",
                        style: TextStyle(
                            fontSize: 17.2,                        
                            color: ColorConstants.white),
                      ),
        
                      Text(
                        "My List",
                        style: TextStyle(
                            fontSize: 17.2,                        
                            color: ColorConstants.white),
                      ),
        
                    ],
                  ),
                  
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/top10.png",width: 15,height: 15,),
                      Text("#2 in Nigeria Today",style: TextStyle(fontSize: 13.72,color: ColorConstants.white),)
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        );
  }
}

