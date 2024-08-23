import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key, 
    required this.url, 
    required this.movieName, 
    required this.date});

  final String url;
  final String movieName ;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: ColorConstants.greyShade2,
      child: Row(
        children: [
          SizedBox(width: 12,),
          Image.network(url,
          height: 55,
          width: 113,
          fit: BoxFit.cover,),
          SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Arrival",
              style: TextStyle(
                fontSize: 13.72,
                fontWeight: FontWeight.w500,
                color: ColorConstants.white),),
              Text(movieName,
              style: TextStyle(
                fontSize: 13.72,
                fontWeight: FontWeight.w500,
                color: ColorConstants.white),),
              Text(date, 
              style: TextStyle(
                fontSize: 10.51,
                fontWeight: FontWeight.w500,
                color: ColorConstants.white),)
            ],
          )
        ],
      ),
    );
  }
}