import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/text_style.dart';
import 'package:stroke_text/stroke_text.dart';

import '../leadersboards_record/leaderboards_records.dart';
import 'leaderboard_profile_controller.dart';

class LeaderboardsProfileScreen extends StatelessWidget {
   LeaderboardsProfileScreen({Key? key}) : super(key: key);

   LeaderBoardProfileController leaderBoardProfileController = Get.put(LeaderBoardProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         // SizedBox(height: 20,),
          Stack(
            children: [
              Container(
                height: Get.height / 2.4,
                width: Get.width,
                child: Image.asset(
                  AssetRes.leaderboardsBg,
                  fit: BoxFit.fill,
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: Get.width * 0.030,top: Get.height * 0.055),
                child: Row(
                  children: [
                    Image.asset(
                      AssetRes.arrowLeft,
                      height: 25,
                      width: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: Get.width * 0.25,
                    ),
                    Text(
                        "Leaderboard",
                        style:medium(
                            fontSize: 20,
                            color: ColorRes.black
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: Get.height * 0.130,left:  Get.width * 0.038),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: Get.height * 0.180,
                    width: Get.width * 0.302,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              ColorRes.colorF2609E,
                              ColorRes.colorF2609E.withOpacity(0.0),
                              ColorRes.colorFFC0DB,
                            ])
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: Get.height * 0.180,
                        width: Get.width * 0.302,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetRes.leaderboardPro2),)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: Get.height * 0.080),
                          child: Center(child: Text("#2",style: bold(fontSize: 20,color: ColorRes.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: Get.height * 0.130,right: Get.width * 0.038),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: Get.height * 0.180,
                    width: Get.width * 0.302,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              ColorRes.colorF2609E,
                              ColorRes.colorF2609E.withOpacity(0.0),
                              ColorRes.colorFFC0DB,
                            ])
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: Get.height * 0.180,
                        width: Get.width * 0.302,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(AssetRes.leaderboardPro3))
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.only(top: Get.height * 0.080),
                          child: Center(child: Text("#3",style: bold(fontSize: 20,color: ColorRes.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: Get.height * 0.050),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: Get.height * 0.300,
                    width: Get.width * 0.384,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 20,
                            color: Color(0xFFFF9696),
                          )
                        ],
                        gradient: LinearGradient(
                            colors: [
                              ColorRes.colorF2609E,
                              ColorRes.colorF2609E.withOpacity(0.0),
                              ColorRes.colorFFC0DB,
                            ])
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: Get.height * 0.100,
                        width: Get.width * 0.384,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetRes.leaderboardPro1),)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: Get.height * 0.110),
                          child: Center(child: Text("#1",style: bold(fontSize: 20,color: ColorRes.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: Get.height * 0.310),
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Kylie Reaves",style: regular(fontSize: 14,color: ColorRes.black),),
                        Text("Riley Brown",style: regular(fontSize: 14,color: ColorRes.black),),
                        Text("John Smith",style: regular(fontSize: 14,color: ColorRes.black),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("@KylieRzxo",style: regular(fontSize: 10,color: ColorRes.black),),
                        Text("@Rileyzbeownz12",style: regular(fontSize: 10,color: ColorRes.black),),
                        Text("@Jsmith24",style: regular(fontSize: 10,color: ColorRes.black),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StrokeText(
                          text: "9.96",
                          strokeColor: ColorRes.black,
                          strokeWidth: 1.5,
                          textStyle:  bold(fontSize: 20,color: ColorRes.white),
                        ),
                       // Text("9.96",style: bold(fontSize: 20,color: ColorRes.white),),
                        StrokeText(
                          text: "9.97",
                          strokeColor: ColorRes.black,
                          strokeWidth: 1.5,
                          textStyle:  bold(fontSize: 20,color: ColorRes.white),
                        ),
                        StrokeText(
                          text: "9.95",
                          strokeColor: ColorRes.black,
                          strokeWidth: 1.5,
                          textStyle:  bold(fontSize: 20,color: ColorRes.white),
                        ),
                      //  Text("9.97",style: bold(fontSize: 20,color: ColorRes.white),),
                      //  Text("9.95",style: bold(fontSize: 20,color: ColorRes.white),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: Get.height / 1.8,
                width: Get.width,
                child: Image.asset(
                  AssetRes.leaderboardsBg2,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                  padding:EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: Get.height * 0.040,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: ColorRes.black.withOpacity(0.25),
                            )
                          ],
                        ),
                       child: Center(
                          child: Text("Male",style: regular(fontSize: 12,color: Color(0xFF7E7E7E)),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: Get.height * 0.040,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: ColorRes.black.withOpacity(0.25),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text("Mixed",style: regular(fontSize: 12,color: Color(0xFF7E7E7E)),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: Get.height * 0.040,
                        decoration: BoxDecoration(
                          color: ColorRes.white,
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: ColorRes.black.withOpacity(0.25),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text("FeMale",style: regular(fontSize: 12,color: Color(0xFF7E7E7E)),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.070,left: 20,right: 15),
                child:Container(
                  height: Get.height * 0.460,
                  width: Get.width,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return  Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(()=>LeadersBoardsRecordsScreen());
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(left: Get.width * 0.076,top: Get.height * 0.010),
                              child: Container(
                                height: Get.height * 0.055,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  gradient:LinearGradient(colors:[
                                    ColorRes.black.withOpacity(0.20),
                                    ColorRes.black.withOpacity(0.25),
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 15,
                                      spreadRadius: 9,
                                      color: ColorRes.black.withOpacity(0.10),
                                    )
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(35)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(leaderBoardProfileController.name2[index],style: bold(fontSize: 20,color: ColorRes.white),),
                                      SizedBox(width: 20,),
                                      Text(leaderBoardProfileController.name[index],style: regular(fontSize: 14,color: ColorRes.black),),
                                      Spacer(),
                                      Text(leaderBoardProfileController.name3[index],style: bold(fontSize: 20,color: ColorRes.white),),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: Get.height * 0.085,
                            width: Get.width * 0.185,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(AssetRes.leaderboardList,fit: BoxFit.fill,),
                          ),

                        ],
                      );
                    },
                  ),
                ),),
            ],
          ),
        ],
      ),
    );
  }
}
