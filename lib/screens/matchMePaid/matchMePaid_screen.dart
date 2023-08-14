import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/common/responsive_ui.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

import 'matchMePaid_controller.dart';

class MatchMePaidScreen extends StatelessWidget {
   MatchMePaidScreen({Key? key}) : super(key: key);

   MatchMePaidController matchMePaidController = Get.put(MatchMePaidController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //SizedBox(height: 25,),
         GetBuilder<MatchMePaidController>(
           id: "paid",
             builder:(controller) {
               return Stack(
                 children: [

                   Container(
                     height:Get.height,
                     width:Get.width,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage(AssetRes.matchMePaidBackGround,),fit: BoxFit.cover)
                     ),
                   ),

                   /// ------------------------------------ app bar ------------------------------------------------------------

                   Padding(
                     padding:  EdgeInsets.only(left: Get.width * 0.040,top: Get.height * 0.055),
                     child: Row(
                       children: [
                         InkWell(
                           onTap: () {
                             Get.back();
                           },
                           child: Image.asset(
                             AssetRes.arrowLeft,
                             height: 25,
                             width: 25,
                             color: Colors.black,
                           ),
                         ),
                         SizedBox(
                           width: Get.width * 0.35,
                         ),
                         Text(
                             StringRes.matches,
                             style:medium(
                                 fontSize: 20,
                                 color: ColorRes.black
                             )
                         ),
                       ],
                     ),
                   ),

                   /// -------------------------------------------- match me photo ------------------------------------------------------

                   Padding(
                     padding:  EdgeInsets.only(top: Get.height * 0.110,left: Get.width * 0.060,),
                     child: Text(StringRes.seven,style: medium(fontSize: 18,color: ColorRes.black),textAlign: TextAlign.left,),
                   ),

                   Padding(
                     padding:  EdgeInsets.only(left: Get.width * 0.060,right: Get.width * 0.060,top: Get.height * 0.190,),
                     child: SizedBox(
                       height: Get.height * 0.8,
                       child: GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                         scrollDirection: Axis.vertical,
                         padding: EdgeInsets.zero,
                         //shrinkWrap: true,
                         itemCount:6,
                         itemBuilder: (context, index) {
                           return
                             matchMePaidController.isFuture == true ?
                           Container(
                             height:Get.height * 0.246,
                             width: Get.width,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: ColorRes.white,width: 5),
                             ),
                             child: Image.asset(
                               matchMePaidController.paid[index],
                               fit: BoxFit.fill,
                             ),
                           ) :  Container(
                             height:Get.height * 0.246,
                             width: Get.width,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: ColorRes.white,width: 5),
                             ),
                             child: Image.asset(
                               matchMePaidController.unPaid[index],
                               fit: BoxFit.fill,
                             ),
                           );
                         },
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 25,childAspectRatio:0.750),
                       ),
                     ),
                   )
                 ],
               );
             },
         ),
        ],
      ),
    );
  }
}
