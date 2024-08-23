// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Image.asset(ImageConstants.LOGO,height: 37.2,width: 138,),
        centerTitle: true,
        actions: [
          Icon(Icons.edit,color: ColorConstants.white,),
          SizedBox(width: 20,)
        ],
      ),
      body: Center(
        child:GridView.builder(
          itemCount: DummyDb.username.length+1,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 75),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 22,
            mainAxisExtent: 121
            ), 
          itemBuilder:(context, index) =>
          index<DummyDb.username.length?
           UserNameCard(
            image: DummyDb.username[index]["image"], 
            name: DummyDb.username[index]["name"],
            onCardTapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavbarScreen(),));
            },
            ):

            UserNameCard(
              image: ImageConstants.addicon, 
              name: "Add Profile",
              onCardTapped: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to access")));
              },
              )
          // Column(
          //   children: [              
          //    Image.asset(ImageConstants.addicon,height: 50,width: 50,),
          //     Text("Add Profile",style: TextStyle(color:ColorConstants.white,height: 3 ),),
          //   ],          
          // )
          ) ,
        )
    );
  }
}

