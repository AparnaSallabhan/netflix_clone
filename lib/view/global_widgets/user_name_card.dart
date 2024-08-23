import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key, 
    required this.image, 
    required this.name,
    this.onCardTapped,
    this.height,
    this.width
  });
  final String image;
  final String name;
  final double? height;
  final double? width;
  final void Function()? onCardTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
       children: [
        Image.asset(image,
        height: height,
        width: width,),
         Text(name,style: TextStyle(color:ColorConstants.white,height: 2 ),),
       ],
       ),
    );
  }
}