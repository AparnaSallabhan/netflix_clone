import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(
              fontSize: 14.72,
              fontWeight: FontWeight.w400,
              color: ColorConstants.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Introducing Downloads For You",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19.63,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.white),
            ),
            SizedBox(
              height: 12.32,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 10.78,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.white),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 93),
              child: CircleAvatar(
                radius: 88.5,
                backgroundColor: ColorConstants.greyShade2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40.89,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xff0071eb),
              ),
              child: Text("SETUP",
                  style: TextStyle(
                      fontSize: 13.86,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.white)),
            ),
            SizedBox(
              height: 49.11,
            ),
            Container(
              height: 33,
              width: 239,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 61),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: ColorConstants.greyShade2),
              child: Text("Find Something to Download",
                  style: TextStyle(
                      fontSize: 16.71,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.white)),
            )
          ],
        ),
      ),
    );
  }
}
