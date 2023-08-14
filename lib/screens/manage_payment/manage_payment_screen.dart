import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

import '../../utils/colour_res.dart';

class managePaymentScreen extends StatelessWidget {
  const managePaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset(AssetRes.paymentBg,fit: BoxFit.fill,),
            ),

            ///---------------------------- app bar -------------------------------------------------

            Padding(
                padding:  EdgeInsets.only(top: Get.height * 0.050,),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: Get.height *  0.0400,
                        width: Get.width * 0.15,
                        child: Image.asset(AssetRes.backArrow),
                      ),
                    ),
                    SizedBox(width: Get.width * 0.150,),
                    Text(StringRes.managePayment,style: regular(fontSize: 20,color: ColorRes.white),),
                  ],
                )
            ),

            ///---------------------------------------- payament ui ------------------------------------------------

            Padding(
              padding:  EdgeInsets.only(left: Get.width * 0.051,right:Get.width * 0.051,top: Get.height * 0.111),
              child: Container(
                height: Get.height * 0.885,
                width: Get.width,
                child: Image.asset(AssetRes.paymentImg2,fit: BoxFit.fill,),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(left: Get.width * 0.025,right:Get.width * 0.025,top: Get.height * 0.150),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: Get.height * 0.164,
                      width: Get.width * 0.810,
                      decoration: BoxDecoration(
                        color: ColorRes.color272727,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      width: Get.width * 0.3,
                                      child: Text("Enter provoking Message to buy here",style: bold(fontSize: 12,color: ColorRes.white),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text('Image?',style: bold(fontSize: 12,color: ColorRes.white),),
                            SizedBox(width: 30,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.025,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                         // alignment: Alignment.center,
                          height:  Get.height * 0.104,
                          width: Get.width * 0.384,
                          decoration: BoxDecoration(
                            color: ColorRes.color272727,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Unlimited",style: bold(fontSize: 14,color: ColorRes.white),),
                                Text("Rating",style: bold(fontSize: 14,color: ColorRes.white),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: Get.width * 0.038,),
                        Container(
                          height:  Get.height * 0.104,
                          width: Get.width * 0.384,
                          decoration: BoxDecoration(
                            color: ColorRes.color272727,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Unlimited",style: bold(fontSize: 14,color: ColorRes.white),),
                                Text("Matches",style: bold(fontSize: 14,color: ColorRes.white),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.025,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height:  Get.height * 0.104,
                          width: Get.width * 0.384,
                          decoration: BoxDecoration(
                            color: ColorRes.color272727,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("See who rated you",style: bold(fontSize: 13,color: ColorRes.white),),
                            ],
                          ),
                        ),
                        SizedBox(width: Get.width * 0.038,),
                        Container(
                          alignment: Alignment.center,
                          height:  Get.height * 0.104,
                          width: Get.width * 0.384,
                          decoration: BoxDecoration(
                            color: ColorRes.color272727,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("See who wants to match with you",style: bold(fontSize: 13,color: ColorRes.white),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.035,),
                    Container(
                      height: Get.height * 0.100,
                      width:  Get.width * 0.820,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: ColorRes.white),
                        gradient: LinearGradient(colors: [
                          ColorRes.colorFFC0DB.withOpacity(0.20),
                         ColorRes.white.withOpacity(0.10),
                          ColorRes.white..withOpacity(0.70)
                        ],begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 month",style: bold(fontSize: 18,color: ColorRes.white),),
                            Text("\$5.99",style: bold(fontSize: 18,color: ColorRes.white),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.015,),
                    Container(
                      height: Get.height * 0.115,
                      width:  Get.width * 0.820,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: ColorRes.white),
                        gradient: LinearGradient(colors: [
                          ColorRes.colorFFC0DB.withOpacity(0.20),
                          ColorRes.white.withOpacity(0.10),
                          ColorRes.white..withOpacity(0.70)
                        ],begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                     child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("3 months",style: bold(fontSize: 18,color: ColorRes.white),),
                                Text("\$12.95",style: bold(fontSize: 18,color: ColorRes.white),),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Text("7-day free trial",style: medium(fontSize: 14,color: ColorRes.white),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.015,),
                    Container(
                      height: Get.height * 0.115,
                      width:  Get.width * 0.820,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: ColorRes.white),
                        gradient: LinearGradient(colors: [
                          ColorRes.colorFFC0DB.withOpacity(0.20),
                          ColorRes.white.withOpacity(0.10),
                          ColorRes.white..withOpacity(0.70)
                        ],begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("12 months",style: bold(fontSize: 18,color: ColorRes.white),),
                                Text("\$50.00",style: bold(fontSize: 18,color: ColorRes.white),),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("1 month free trial",style: medium(fontSize: 14,color: ColorRes.white),),
                                Text("*BEST DEAL*",style: medium(fontSize: 14,color: ColorRes.white),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
    );
  }
}
