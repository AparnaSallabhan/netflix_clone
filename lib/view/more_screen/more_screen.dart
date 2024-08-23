import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';


class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:38 ,),
//1st row of username cards using list.generate
          _buildUserSelectionMethod(),

//1st row using listview seperated          
          // SizedBox(
          //   height:97 ,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) =>index< DummyDb.username.length?  UserNameCard(
          //       height: index == 1 ? 68 : 60,
          //       width: index == 1 ? 73 : 65,
          //       image: DummyDb.username[index]["image"], 
          //       name: DummyDb.username[index]["name"])
          //       :
          //       Container(
          //         height: 58,
          //          width: 63,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(3),
          //           border: Border.all(
          //             color: Color(0xff8c8787)
          //           )
          //         ),
          //         child:Center(
          //           child: Icon(
          //             Icons.add,
          //             size: 35,
          //           color: ColorConstants.greyShade1,),
          //         ),
          //       ), 
          //     separatorBuilder: (context, index) =>  SizedBox(width: 9,), 
          //     itemCount: DummyDb.username.length +1),
          // ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.edit,color: ColorConstants.white.withOpacity(.81),),
              SizedBox(width: 6,),
              Text("Manage profiles",style: TextStyle(
                fontSize: 14.72,
                fontWeight: FontWeight.w500,
                color: ColorConstants.white.withOpacity(.81)
              )),           
            ],
          ),
             SizedBox(height: 10,),

           Container(
            
            padding: EdgeInsets.only(left: 16,top:19,bottom: 23),
                //height: 280,
                color: Color(0xff1a1a1a),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.message_outlined,
                        color: ColorConstants.white,
                        weight:700 ,),
                        SizedBox(width: 9,),
                        Text("Tell friends about Netflix.",
                        style: TextStyle(
                          fontSize: 19.63,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.white
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: TextStyle(
                      height: 1.8,
                      letterSpacing: 1,
                      fontSize: 10.78,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.white
                    ),),
                    SizedBox(height: 11,),
                    Text("Terms & Conditions",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(0, -4),
                          color: ColorConstants.greyShade1
                        )
                      ],
                      fontSize: 10.78,
                      fontWeight: FontWeight.w500,
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConstants.greyShade1
                    ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: ColorConstants.mainBlack,
                            filled: true
                          ),
                        )),
                        SizedBox(width: 7,),
                        Container(
                          height: 37,
                          width: 96,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorConstants.white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text("Copy Link",style: TextStyle(
                            fontSize: 17,
                            color: ColorConstants.mainBlack,
                            fontWeight: FontWeight.w600
                          ),),
                        )
                      ],
                    ),

                    SizedBox(height:21 ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/whatsapp_logo.png"),
                        SizedBox(
                          height: 41,
                          child: VerticalDivider(
                            color: Color(0xff8c8787),
                          ),
                        ),
                        Container(
                           height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            color: Color(0xff395185),
                            borderRadius: BorderRadius.circular(9.8)
                          ),
                          child: Image.asset("assets/images/logos_facebook.png")),
                          SizedBox(
                            height: 41,
                            child: VerticalDivider(
                               color: Color(0xff8c8787),
                            ),
                          ),
                        Container(
                          height: 33.6,
                          width: 36,                     
                          decoration: BoxDecoration(
                             color: ColorConstants.white,
                             borderRadius: BorderRadius.circular(9.8)
                          ),
                          child: Image.asset("assets/images/Gmail-logo 1.png")),
                          SizedBox(
                            height: 41,
                            child: VerticalDivider( color: Color(0xff8c8787),)),
                          Column(
                            children: [
                              Icon(Icons.more_horiz,color: ColorConstants.white,size: 21,),
                              Text("More",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.72,color: ColorConstants.white),)
                            ],
                          )
                      ],
                    ),
                    
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 27,),
                  Icon(Icons.check,color: ColorConstants.white,weight:600,size: 33,),
                  Text("  My List",style: TextStyle(fontSize: 14.72,fontWeight: FontWeight.w500,color: ColorConstants.white),),
                ],
              ),
              Divider(color: Color(0xff8c8787),),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 26,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("App Settings",
                    style: TextStyle(
                      //height: 2,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.white)),
                      SizedBox(height: 10,),
                      Text("Account",
                    style: TextStyle(
                     // height: 2,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.white)),
                      SizedBox(height: 10,),
                      Text("Help",
                    style: TextStyle(
                     // height: 2,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.white)),
                      SizedBox(height: 10,),
                      Text("Sign Out",
                    style: TextStyle(
                      //height: 2,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.white)),
                  ],
                ),
              )
        ],
      ),
    );
  }

  Padding _buildUserSelectionMethod() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Row(
            children: List.generate(
              DummyDb.username.length +1, 
              (index) => index< DummyDb.username.length? Padding(
                padding: const EdgeInsets.only(right: 9),
                child: UserNameCard(
                  height: index == 1 ? 68 : 60,
                  width: index == 1 ? 73 : 65,
                 image: DummyDb.username[index]["image"], 
                 name: DummyDb.username[index]["name"]),
              )
               :
               Column(
                 children: [
                   Container(
                      height: 60,
                       width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: Color(0xff8c8787)
                        )
                      ),
                      child:Center(
                        child: Icon(
                          Icons.add,
                          size: 35,
                        color: ColorConstants.greyShade1,),
                      ),
                    ),
                    Text("",
                    style: TextStyle(color:ColorConstants.white,height: 2 ))
                 ],
               ), ),
          ),
        );
  }
}