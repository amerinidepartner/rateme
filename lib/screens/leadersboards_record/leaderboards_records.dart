import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/text_style.dart';

import 'leadersboards_records_controller.dart';

class LeadersBoardsRecordsScreen  extends StatelessWidget {
   LeadersBoardsRecordsScreen({Key? key}) : super(key: key);

   LeadersBoardsRecordsController leadersBoardsRecordsController = Get.put(LeadersBoardsRecordsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          child: Image.asset(AssetRes.leaderboardRecordBg,fit: BoxFit.fill,),
        ),

        ///---------------------------- app bar -------------------------------------------------

        Padding(
          padding:  EdgeInsets.only(top: Get.height * 0.050,),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: Get.height *  0.0400,
              width: Get.width * 0.15,
              child: Image.asset(AssetRes.backArrow),
            ),
          ),
        ),

        /// -------------------- recod list ------------------------------------------------------

        Padding(
          padding:  EdgeInsets.only(top:  Get.height * 0.120,left: 20,right: 15),
          child: Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.to(()=>LeadersBoardsRecordsScreen());
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
                                  Text(leadersBoardsRecordsController.name2[index],style: bold(fontSize: 20,color: ColorRes.white),),
                                  SizedBox(width: 20,),
                                  Text(leadersBoardsRecordsController.name[index],style: regular(fontSize: 14,color: ColorRes.black),),
                                  Spacer(),
                                  Text(leadersBoardsRecordsController.name3[index],style: bold(fontSize: 20,color: ColorRes.white),),
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
          ),
        )
      ],
    ),
    );
  }
}
