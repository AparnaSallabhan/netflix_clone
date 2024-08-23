// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/movie_description_card.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
       // toolbarHeight: 150,
        //leadingWidth: 100,
        backgroundColor: ColorConstants.mainBlack,
        titleSpacing: 0,
       leading:  
            Padding(
              padding: const EdgeInsets.all(15),
              child: CircleAvatar(
                radius: 9.5,
                backgroundColor: Color(0xfff50914),
                child: Icon(Icons.notifications,color: ColorConstants.white,size: 11,),
              ),
            ),

        title:Text("Notifictaion",style: TextStyle(fontSize: 16.91,fontWeight: FontWeight.w700,color: ColorConstants.white),) ,
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Column(
              children: List.generate(
                DummyDb.newArrivalData.length, 
                (index) =>NewArrivalCard(
                  url: DummyDb.newArrivalData[index]["url"], 
                  movieName: DummyDb.newArrivalData[index]["movieName"], 
                  date: DummyDb.newArrivalData[index]["date"])),            
              ),
              SizedBox(height: 25,),
              Column(
                children: List.generate(
                  
                DummyDb.movieDescriptionData.length,
                 (index) => MovieDescriptionCard(
                  imageUrl:  DummyDb.movieDescriptionData[index]["image"], 
                  moviName:  DummyDb.movieDescriptionData[index]["movieName"], 
                  descripton: DummyDb.movieDescriptionData[index]["description"]), 
                  ),
              )
          ],
        ),
        
        
        // child: Column(
        //   children: [
          
        //   ListView.builder(
        //     itemCount: DummyDb.newArrivalData.length,
        //     shrinkWrap: true,
        //     physics: NeverScrollableScrollPhysics(),
        //     itemBuilder: (context, index) => NewArrivalCard(
        //       url: DummyDb.newArrivalData[index]["url"], 
        //       movieName: DummyDb.newArrivalData[index]["movieName"],
        //       date: DummyDb.newArrivalData[index]["date"],),),
        
        //   SizedBox(height: 25,),
        
        //   ListView.builder(
        //     itemCount: DummyDb.movieDescriptionData.length,
        //     shrinkWrap: true,
        //     physics: NeverScrollableScrollPhysics(),
        //     itemBuilder: (context, index) => MovieDescriptionCard(
        //       imageUrl: DummyDb.movieDescriptionData[index]["image"], 
        //       moviName: DummyDb.movieDescriptionData[index]["movieName"], 
        //       descripton: DummyDb.movieDescriptionData[index]["description"],),)
            
        //   ],
        // ),
      ),
    );
  }
}