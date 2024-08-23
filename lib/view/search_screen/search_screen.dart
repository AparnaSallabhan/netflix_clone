// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              fillColor: Color(0xff424242) ,
              hintText: "Search for a show movie genre e.t.c.",
              hintStyle: TextStyle(
                color: Color(0xffc4c4c4),
                fontSize: 15
              ),
              prefixIcon: Icon(Icons.search,color: Color(0xffc4c4c4),),
              suffixIcon: Icon(Icons.mic,color: Color(0xffc4c4c4),)
              ),
              
            ),
            
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Top Searches",style: TextStyle(
                fontSize: 26.75,
                fontWeight: FontWeight.w700,
                color: ColorConstants.white
              ),),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) => 
              SearchScreenCard(
                name: DummyDb.searchSreenData[index]["name"], 
                image: DummyDb.searchSreenData[index]["image"],),
              separatorBuilder: (context, index) => SizedBox(height: 3,), 
              itemCount: DummyDb.searchSreenData.length),
            )
          ],
        ),
      ),
    );
  }
}