import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';
import '../../utils/asset_res.dart';
import 'notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

   NotificatioController notificatioController = Get.put(NotificatioController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset(AssetRes.notificationBg,fit: BoxFit.fill,),
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
                  SizedBox(width: Get.width * 0.230,),
                  Text(StringRes.notification,style: regular(fontSize: 20,color: ColorRes.black),),
                ],
              )
            ),

            /// --------------------------------- notification list -------------------------------------------------------------

            Padding(
                padding:EdgeInsets.only(left: Get.width * 0.090,right:  Get.width * 0.090,top: Get.height * 0.150,),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notificatioController.name.length,
                itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notificatioController.name[index],style: bold(fontSize: 18,color: ColorRes.black),),
                    SizedBox(height: 5,),
                    Container(height: 1,decoration: BoxDecoration(border: Border.all(color: ColorRes.colorC9C9C9,width: 1)),),
                    SizedBox(height: Get.height * 0.0200,),
                    Wrap(
                      children:List.generate(
                          notificatioController.name2.length, (index){
                        return Padding(
                          padding:  EdgeInsets.only(bottom: Get.height * 0.0270,),
                          child: Container(
                            height: Get.height * 0.120,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF2F2),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  color: ColorRes.black.withOpacity(0.25),
                                )
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(11)),
                            ),
                            child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 10,),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: Get.height * 0.120,
                                            width: Get.width * 0.170,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              border: Border.all(color: ColorRes.colorB0B0B0,width: 3),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(image: AssetImage(AssetRes.notificationPro),fit: BoxFit.cover)
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(top: Get.height * 0.080,left: Get.width * 0.130),
                                            child: Container(
                                              height: 12,
                                              width: 12,
                                              decoration: const BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5,right: 5),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(notificatioController.name2[index],style: regular(fontSize: 13,color: ColorRes.black),),
                                                Text(notificatioController.name5[index],style: regular(fontSize: 12 ,color: ColorRes.colorB0B0B0),),
                                              ],
                                            ),
                                            Row(
                                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             // crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(notificatioController.name3[index],style: regular(fontSize: 14,color: ColorRes.colorB0B0B0),),
                                                SizedBox(width: Get.width * 0.280,),
                                                Text(notificatioController.name4[index],style: regular(fontSize: 14,color: ColorRes.colorB0B0B0)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ),
                        );
                      }),
                    ),
                  ],
                );
              },
              ),
            ),
          ],
        ),
    );
  }
}
