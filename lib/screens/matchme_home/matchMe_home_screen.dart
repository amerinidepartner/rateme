import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/screens/homescreen/homescreen.dart';
import 'package:rate_me/screens/matchMeUser/matchMeUser_screen.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stroke_text/stroke_text.dart';
import '../../../utils/asset_res.dart';
import '../homescreen/hone_controller.dart';
import 'matchMe_home_controller.dart';

class MatchMeHomeScreen extends StatelessWidget {
   MatchMeHomeScreen({Key? key}) : super(key: key);

   MarchMeController marchMeController = Get.put(MarchMeController());
   HomeController  homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body:Obx(() =>
      homeController.isMatch.value == true
          ? marchMeController.isMatchPass == true ? MatchMeUserScreen() :  Stack(
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
            child:  Container(
              height:Get.height * 0.858,
              width: Get.width,
              child: Image.asset(AssetRes.matchMeHome,fit: BoxFit.fill,),
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
                    homeController.isMatch.value = true;
                    //  homeController.update(["uiRefresh"]);
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
                      //   homeController.update(["uiRefresh"]);
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


          Padding(
            padding:  EdgeInsets.only(left: 15,right: 15,top: Get.height * 0.035,),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.175,),
                Container(
                  height: Get.height * 0.570,
                  width: Get.width * 0.923,
                  child: PageView.builder(
                    controller: marchMeController.pageController.value,
                    onPageChanged:marchMeController.onpagechanged,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            height: Get.height * 0.570,
                            width: Get.width * 0.923,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                            ),
                            child:Image.asset(marchMeController.nameList[index],fit: BoxFit.fill,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Text("7.7",
                                      style: TextStyle(
                                          height: 0,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 4,
                                              offset: Offset(0, 4),
                                              color: ColorRes.white.withOpacity(0.25),
                                            )],
                                          fontSize: 40,fontWeight: FontWeight.w600,fontFamily: "Poppins-Regular",color: ColorRes.white),)),
                                Align(
                                    alignment: Alignment.topRight,child: Text(
                                  StringRes.averageRating,
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          color: ColorRes.white.withOpacity(0.25),
                                        )],
                                      height: 0,
                                      fontSize: 12,
                                      fontFamily: "Poppins-Medium",color: ColorRes.white),
                                )),
                                SizedBox(height: Get.height * 0.35,),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Max, 21",
                                    style: TextStyle(
                                        height: 0,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 4),
                                            color: ColorRes.white.withOpacity(0.25),
                                          )],
                                        fontSize: 30,fontWeight: FontWeight.w600,fontFamily: "Poppins-Regular",color: ColorRes.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },),
                ),
                SizedBox(height: Get.height * 0.015,),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        marchMeController.isMatchPass.value = true;
                      },
                      child: Container(
                        height: Get.height * 0.100,
                        width: Get.width * 0.430,
                        child: Image.asset(AssetRes.matchMePass,fit: BoxFit.fill,),
                      ),
                    ),
                    Container(
                      height: Get.height * 0.100,
                      width: Get.width * 0.430,
                      child: Image.asset(AssetRes.matchMeMatchh,fit: BoxFit.fill,),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: Get.height * 0.740,
            left: Get.width * 0.400,
            child: SmoothPageIndicator(
              controller: marchMeController.pageController.value,  // PageController
              count: marchMeController.nameList.length,
              effect:  WormEffect(
                dotColor:Color(0xFF000000).withOpacity(0.20),
                activeDotColor:ColorRes.colorFAA7DE,
                dotWidth:  14,
                dotHeight: 14,
                spacing: 4,
                strokeWidth: 15,
                offset: 4,
              ),  // your preferred effect
            ),
          ),
        ],
      )
          : HomeScreen(),),
    );
  }
}
