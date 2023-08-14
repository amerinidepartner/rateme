import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/responsive_ui.dart';
import 'package:rate_me/screens/chat_flow/chat_screen/chat_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

import 'chatHome_controller.dart';

class ChatHomeScreen extends StatelessWidget {
   ChatHomeScreen({Key? key}) : super(key: key);

   ChatHomeController chatHomeController = Get.put(ChatHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetRes.chatHomeBg,),fit: BoxFit.fill,)),
          ),

          /// ------------ appBar --------------
          Padding(
            padding:  EdgeInsets.only(left: Get.width * 0.051,top: Get.height * 0.055),
            child: Row(
              children: [
                Image.asset(
                  AssetRes.arrowLeft,
                  height: 25,
                  width: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  width: Get.width * 0.20,
                ),
                Text(
                      StringRes.chatHomeName,
                    style:medium(
                        fontSize: 20,
                        color: ColorRes.black
                    )
                ),
              ],
            ),
          ),

          /// ----------- profile ------------------

          Padding(
              padding:EdgeInsets.symmetric(
                vertical: Get.height * 0.120,
                horizontal: Get.width * 0.051
              ),
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.700,
                  width: Get.width,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: chatHomeController.name.length,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding:  EdgeInsets.only(bottom: Get.height * 0.022),
                        child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(()=>ChatScreen());
                      },
                      child: Container(
                          height: Get.height * 0.085,
                          width: Get.width * 0.171,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors:[
                              ColorRes.color94FD53.withOpacity(0.73),
                              ColorRes.colorC4C4C4.withOpacity(0),
                            ])
                          ),
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(chatHomeController.profile[index]),fit: BoxFit.cover),
                            ),
                          ),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatHomeController.name[index],
                            style: medium(
                              fontSize: 17,
                              color: ColorRes.black
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width * 0.55,
                                child: Text(
                                  chatHomeController.name2[index],
                                  overflow: TextOverflow.ellipsis,
                                  style: medium(
                                      fontSize: 14,
                                      color: ColorRes.color626262,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                chatHomeController.time[index],
                                style: medium(
                                  fontSize: 14,
                                  color: ColorRes.black,
                                ),
                              ),
                            ],
                          )
                        ],
                    ),

                  ],
                ),
                      );
                  },),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
