import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({super.key, required this.name, required this.image});

  final String name;
  final String image ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff424242),
      child: Row(
        children: [
          Image.network(image,
          height: 76,
          width: 146,
          fit: BoxFit.cover,),
          SizedBox(width: 20,),
          Text(name,style: TextStyle(fontSize: 14.72,fontWeight: FontWeight.w400,color: ColorConstants.white),),
          Spacer(),
          Icon(Icons.play_circle_outline,color: ColorConstants.white,),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}