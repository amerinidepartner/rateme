import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';
import 'chatScreen_controller.dart';

  class ChatScreen extends StatelessWidget {
   ChatScreen({Key? key}) : super(key: key);

   ChatScreenController chatScreenController = Get.put(ChatScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white,
        body:Stack(
          children: [

            /// ------------ app bar -------------------

            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: Get.width * 0.046,
                vertical  : Get.height * 0.062,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap:() {
                      Get.back();
                    },
                    child: Image.asset(
                      AssetRes.backArrow,
                      height: 25,
                      width: 25,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: Get.height * 0.050,
                    width: Get.width * 0.089,
                    child: Image.asset(AssetRes.chatHomepro1),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "Jessie",
                    style: medium(
                      fontSize: 20,
                      color: ColorRes.black,
                    ),
                  ),
                ],
              ),
            ),

            /// ------------ chat ----------------------
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 19,left: 29),
                child: Column(
                  children: [

                    /// ---------- send chat --------------------
                    SizedBox(height: Get.height * 0.130,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Today 11:30",style: regular(fontSize: 14,color: ColorRes.color848484),),
                    ),
                    SizedBox(height: Get.height * 0.030,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 65,
                        width: Get.width * 0.623,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: ColorRes.black.withOpacity(0.25)
                            )
                          ],
                          color: ColorRes.colorF2609E,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Center(child: Text("Hello, how are you doing?",style: medium(fontSize: 14),)),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                               // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("11:30",style: regular(fontSize: 10),),
                                  Icon(Icons.check,color: Colors.red,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    /// ----------------- Recive chat ----------------------------

                    SizedBox(height: Get.height * 0.040,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 65,
                        width: Get.width * 0.623,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  color: ColorRes.black.withOpacity(0.25)
                              )
                            ],
                            color: Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Center(child: Text("I'm doing fine, yourself?",style: medium(fontSize: 14,color: ColorRes.color686868),)),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("12:11",style: regular(fontSize: 10,color: ColorRes.colorB9B9B9),),
                                  Icon(Icons.check,color: Colors.grey,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// ------------- send message ------------------

            Align(
              alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:  EdgeInsets.only(bottom: 20,left: Get.width * 0.0692,right: Get.width * 0.0692),
                  child: Container(
                    height: Get.height * 0.0640,
                    width: double.infinity,
                    child: Row(
                      children: [
                       Container(
                         height: 50,
                         width: Get.width * 0.650,
                         child: TextField(
                           maxLines: 3,
                           //textAlign: TextAlign.center,
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "type something.....",
                             hintStyle: regular(fontSize: 20,color: ColorRes.colorB9B9B9)
                           ),
                         ),
                       ),
                        Spacer(),
                        Container(
                          height: 55,
                          width: Get.width * 0.195,
                          decoration: BoxDecoration(
                            color: ColorRes.colorF2609E,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                color: ColorRes.black.withOpacity(0.25),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(45)),
                          ),
                          child: Image.asset(AssetRes.chatbackIcon,height: 24,width: 24,),
                        ),
                      ],
                    ),
                  ),
                ),
            )
          ],
        ),
    );
  }
}
