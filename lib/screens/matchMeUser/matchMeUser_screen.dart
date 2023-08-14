import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/homescreen/homescreen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';
import 'package:stroke_text/stroke_text.dart';
import '../../../utils/colour_res.dart';
import '../homescreen/hone_controller.dart';
import '../matchMePaid/matchMePaid_screen.dart';
import '../matchme_home/matchMe_home_controller.dart';
import 'matchMeUser_Controller.dart';


class MatchMeUserScreen extends StatelessWidget {
   MatchMeUserScreen({Key? key}) : super(key: key);

   MatchMeUserController matchMeUserController = Get.put(MatchMeUserController());
   HomeController  homeController = Get.put(HomeController());
   MarchMeController marchMeController = Get.put(MarchMeController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.transparent,
      body:
      Obx(() =>  homeController.isMatch.value == true ?
      Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetRes.homeBackground,),fit: BoxFit.cover,),
            ),
          ),
          Positioned(
            top: Get.height * 0.050,
            child: Container(
              height:Get.height * 0.930,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetRes.matchMeUser,),fit: BoxFit.fill,),
              ),
            ),
          ),




          Padding(
          padding:  EdgeInsets.only(left: Get.width * 0.200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Get.height * 0.20,),
          InkWell(
            onTap: () {
              homeController.isMatch.value = false;
            },
            child:Text(StringRes.matchMe,style: regular(fontSize: 24,fontWeight: FontWeight.w400,color: ColorRes.black),),
          ),
          SizedBox(width: Get.width * 0.040,),
          Container(
            height: 33,
            width: 2,
            color: ColorRes.black,
          ),
          SizedBox(width: Get.width * 0.040,),
          InkWell(
              onTap: () {
                homeController.isMatch.value = false;
                marchMeController.isMatchPass.value = false;
              },
              child:
              StrokeText(
                text: StringRes.RateMe,
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: ColorRes.color8E8E8E,
                ),
              )),
          SizedBox(width: Get.width * 0.060,),
          Image.asset(
            AssetRes.noties,
            height: 24,
            width: 24.2,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 15,),
        ],
      ),
    ),

          Positioned(
            top: Get.height * 0.320,
            left: Get.width * 0.105,
            child: Container(
              height: Get.height * 0.225,
              width: Get.width * 0.450,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AssetRes.matchMemale,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.420,
            left: Get.width * 0.420,
            child: Container(
              height: Get.height * 0.225,
              width: Get.width * 0.450,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AssetRes.matchMeFemale,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.680,
            left: Get.width * 0.2,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    StringRes.maxAndSherry,
                    style: w700TextStyle.copyWith(
                      fontSize: 40,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                      StringRes.chtting,
                      style:w400TextStyle.copyWith(
                        fontSize: 12,
                      )
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: Get.height * 0.790,
            left: Get.width * 0.110,
            child: InkWell(
              onTap: () {
                Get.to(()=>MatchMePaidScreen());
              },
              child: Container(
                height: 52,
                width: Get.width * 0.768,
                decoration: BoxDecoration(
                    color: ColorRes.colorF2609E,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: ColorRes.white.withOpacity(0.10),
                      )
                    ]
                ),
                child: Center(
                  child: Text(StringRes.startChatting,style: medium(fontSize: 15),),
                ),
              ),
            ),
          ),
        ],
      ) : HomeScreen()),
    );
  }
}
