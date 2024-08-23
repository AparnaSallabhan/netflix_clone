// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder({
    super.key,
     this.isCircle = false, 
      this.height =177 , 
      this.width =103, 
      required this.title, 
      this.imagesList = const[],
      this.isInfovisible = false,
  });

  final bool isCircle;
  final double height ;
  final double width ;
  final String title;
  final List<String>imagesList;
  final bool isInfovisible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: TextStyle(
              fontSize: 20.92,
              fontWeight: FontWeight.bold,
              color: ColorConstants.white
              ),),
          ),
            SizedBox(height: 14,),
          SizedBox(
            height:isCircle?width: height,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection:Axis.horizontal ,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.red,
                shape:isCircle ? BoxShape.circle :BoxShape.rectangle ,
                
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imagesList[index]))
              ),

              child: Visibility(
                visible: isInfovisible,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 3,
                      width: double.infinity,
                      color: Colors.grey,
                      alignment: Alignment.centerLeft,
                      child: Container(
                        color: Colors.red,
                        width: 35,
                        height: 3,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 7),
                      color: ColorConstants.mainBlack,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.info_outline,color: ColorConstants.white,),
                          Icon(Icons.more_vert,color: ColorConstants.white,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ), 
            separatorBuilder: (context, index) => SizedBox(width: 7,), 
            itemCount: imagesList.length),
          )
          ],
      ),
    );
  }
}
