import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

import '../../utils/colour_res.dart';
import 'language_setting_controller.dart';

class LanguageSettingScreen extends StatelessWidget {
   LanguageSettingScreen({Key? key}) : super(key: key);

   LanguageSettingController languageSettingController = Get.put(LanguageSettingController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  Text(StringRes.languageSetting,style: regular(fontSize: 20,color: ColorRes.white),),
                ],
              )
          ),

          ///---------------------------- language ui -------------------------------------------------


              Padding(
                padding:  EdgeInsets.only(left: Get.width * 0.035,right: Get.width * 0.035,top: Get.height * 0.110),
                child: Container(
                  height: Get.height * 0.820,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorRes.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: ColorRes.white.withOpacity(0.25),
                        )
                      ]
                  ),
                  child:Padding(
                    padding:  EdgeInsets.only(left: Get.width * 0.045,top: Get.height * 0.030,right: Get.width * 0.045,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringRes.language,style: medium(fontSize: 20,color: ColorRes.black),),
                        SizedBox(height:Get.height * 0.020,),
                        SizedBox(
                          height: Get.height * 0.7,
                          width: Get.width,
                          child:   ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: languageSettingController.name.length,
                    itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( languageSettingController.name[index],style: regular(fontSize: 18,color: ColorRes.black),),
                            SizedBox(height:Get.height * 0.011,),
                            Divider(color: ColorRes.colorE9E9E9,thickness: 1,),
                          ],
                        );
                        },),
                        ),
                      ],
                    ),
                  )
                ),
              ),
        ],
      ),
    );
  }
}
