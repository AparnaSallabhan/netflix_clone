import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class MovieDescriptionCard extends StatelessWidget {
  const MovieDescriptionCard({
    super.key, 
    required this.imageUrl, 
    required this.moviName, 
    required this.descripton});


  final String imageUrl;
  final String moviName;
  final String descripton;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(imageUrl,
        height: 195,
        width: double.infinity,
        fit: BoxFit.cover,
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.notifications,size: 24,color: ColorConstants.white,),
                Text("Remind Me",style: TextStyle(fontSize: 11.13,color: ColorConstants.white),)
              ],
            ),
            SizedBox(width:45 ,),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.share,size: 24,color: ColorConstants.white,),
                Text("Share",style: TextStyle(fontSize: 11.13,color: ColorConstants.white),)
              ],
            ),
            SizedBox(width:22.17 ,)
          ],
        ),
        SizedBox(height: 13,),

        Padding(
          padding: const EdgeInsets.only(left: 12,right:8.25 ,bottom: 17.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Season 1 Coming December",style: TextStyle(fontSize: 11.4,color: ColorConstants.white.withOpacity(.83)),),
              SizedBox(height: 13.13,),
              Text(moviName,style: TextStyle(fontSize: 18.66,fontWeight: FontWeight.w700,color: ColorConstants.white),),
              SizedBox(height: 12.87,),
              Text(descripton,
              softWrap: true,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize:11.14,
                color: ColorConstants.white.withOpacity(.83),
              ),
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Steamy",             
                  style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Text("•",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("Soapy",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("•",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("Slow Burn",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("•",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("Suspenseful",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("•",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("Teen",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("•",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                                    Text("Mystery",
                   style: TextStyle(
                    color: ColorConstants.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),

                ],
              )
            ],
          ),
        )

      ],
    );
  }
}