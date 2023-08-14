// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:rate_me/utils/asset_res.dart';
// import 'package:rate_me/utils/text_style.dart';
//
// class ManagePaymentScreen extends StatelessWidget {
//   const ManagePaymentScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(
//             AssetRes.paymentbg,
//             width: Get.width,
//             fit: BoxFit.cover,
//             height: Get.height,
//           ),
//           SafeArea(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 24, top: 10),
//                   child: Row(
//                     children: [
//                       Image.asset(
//                         AssetRes.arrowLeft,
//                         height: 25,
//                         width: 25,
//                         color: Colors.black,
//                       ),
//                       SizedBox(
//                         width: Get.width * 0.19,
//                       ),
//                       Text('Manage Payments'.toUpperCase(),
//                           style: w700TextStyle.copyWith(
//                               fontWeight: FontWeight.w400)),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 6,
//                         ),
//                         Stack(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: Get.width * 0.030),
//                               child:
//                               Image.asset(
//                                 AssetRes.brownie,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: Get.width * 0.08,
//                                   vertical: Get.height * 0.04),
//                               child: Column(
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       color: Colors.black.withOpacity(
//                                         0.9,
//                                       ),
//                                       borderRadius: BorderRadius.circular(
//                                         10,
//                                       ),
//                                     ),
//                                     padding: EdgeInsets.only(
//                                         bottom: Get.height * 0.065,
//                                         top: Get.height * 0.065,
//                                         left: Get.width * 0.035,
//                                         right: Get.width * 0.08),
//                                     child: Row(
//                                       children: [
//                                         SizedBox(
//                                             width: Get.width * 0.25,
//                                             child: Text(
//                                               'Enter provoking message to buy here',
//                                               style: bold(
//                                                 color: Colors.white,
//                                                 fontWeight: FontWeight.w700,
//                                                 fontSize: 12,
//                                               ),
//                                             )),
//                                         Spacer(),
//                                         Text(
//                                           'Image?',
//                                           style: bold(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w700,
//                                             fontSize: 12,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: Get.height * 0.03,
//                                   ),
//                                   Row(
//                                     children: [
//                                       Expanded(
//                                         child: Container(
//                                           height: Get.height * 0.13,
//                                           decoration: BoxDecoration(
//                                             color: Colors.black.withOpacity(
//                                               0.9,
//                                             ),
//                                             borderRadius: BorderRadius.circular(
//                                               10,
//                                             ),
//                                           ),
//                                           child: Row(
//                                             children: [
//                                               SizedBox(
//                                                 width: Get.width * 0.035,
//                                               ),
//                                               SizedBox(
//                                                 width: Get.width * 0.15,
//                                                 child: Text(
//                                                   'Unlimited Rating',
//                                                   style: bold(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w700,
//                                                     fontSize: 12,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: Get.width * 0.05,
//                                       ),
//                                       Expanded(
//                                         child: Container(
//                                           height: Get.height * 0.13,
//                                           decoration: BoxDecoration(
//                                             color: Colors.black.withOpacity(
//                                               0.9,
//                                             ),
//                                             borderRadius: BorderRadius.circular(
//                                               10,
//                                             ),
//                                           ),
//                                           child: Row(
//                                             children: [
//                                               SizedBox(
//                                                 width: Get.width * 0.035,
//                                               ),
//                                               SizedBox(
//                                                 width: Get.width * 0.15,
//                                                 child: Text(
//                                                   'Unlimited Matches',
//                                                   style: bold(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w700,
//                                                     fontSize: 12,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: Get.height * 0.03,
//                                   ),
//                                   Row(
//                                     children: [
//                                       Expanded(
//                                         child: Container(
//                                           height: Get.height * 0.13,
//                                           decoration: BoxDecoration(
//                                             color: Colors.black.withOpacity(
//                                               0.9,
//                                             ),
//                                             borderRadius: BorderRadius.circular(
//                                               10,
//                                             ),
//                                           ),
//                                           child: Row(
//                                             children: [
//                                               SizedBox(
//                                                 width: Get.width * 0.035,
//                                               ),
//                                               SizedBox(
//                                                 width: Get.width * 0.3,
//                                                 child: Text(
//                                                   'See who rated you',
//                                                   style: bold(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w700,
//                                                     fontSize: 12,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: Get.width * 0.05,
//                                       ),
//                                       Expanded(
//                                         child: Container(
//                                           height: Get.height * 0.13,
//                                           decoration: BoxDecoration(
//                                             color: Colors.black.withOpacity(
//                                               0.9,
//                                             ),
//                                             borderRadius: BorderRadius.circular(
//                                               10,
//                                             ),
//                                           ),
//                                           child: Row(
//                                             children: [
//                                               SizedBox(
//                                                 width: Get.width * 0.035,
//                                               ),
//                                               SizedBox(
//                                                 width: Get.width * 0.3,
//                                                 child: Text(
//                                                   'See who wants to match with you',
//                                                   style: bold(
//                                                     color: Colors.white,
//                                                     fontWeight: FontWeight.w700,
//                                                     fontSize: 12,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: Get.height * 0.06,
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: Get.width * 0.05,
//                                         vertical: Get.height * 0.04),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(
//                                         20,
//                                       ),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           AssetRes.box2,
//                                         ),
//                                         fit: BoxFit.cover,
//                                       ),
//                                       border: Border.all(
//                                           color: Colors.white, width: 2),
//                                     ),
//                                     child: Row(
//                                       children: [
//                                         Text(
//                                           '1 month',
//                                           style: bold(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                         Spacer(),
//                                         Text(
//                                           '\$5.99',
//                                           style: bold(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: Get.height * 0.03,
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: Get.width * 0.05,
//                                         vertical: Get.height * 0.027),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(
//                                         20,
//                                       ),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           AssetRes.box2,
//                                         ),
//                                         fit: BoxFit.cover,
//                                       ),
//                                       border: Border.all(
//                                           color: Colors.white, width: 2),
//                                     ),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               '1 month',
//                                               style: bold(
//                                                 color: Colors.white,
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w700,
//                                               ),
//                                             ),
//                                             Spacer(),
//                                             Text(
//                                               '\$5.99',
//                                               style: bold(
//                                                 color: Colors.white,
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w700,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 5,),
//                                         Text(
//                                           '7-day free trial',
//                                           style : regular(
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: Get.height * 0.03,
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: Get.width * 0.05,
//                                         vertical: Get.height * 0.027),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(
//                                         20,
//                                       ),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           AssetRes.box2,
//                                         ),
//                                         fit: BoxFit.cover,
//                                       ),
//                                       border: Border.all(
//                                           color: Colors.white, width: 2),
//                                     ),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               '1 month',
//                                               style: bold(
//                                                 color: Colors.white,
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w700,
//                                               ),
//                                             ),
//                                             Spacer(),
//                                             Text(
//                                               '\$5.99',
//                                               style: bold(
//                                                 color: Colors.white,
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w700,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 5,),
//                                         Row(
//                                           children: [
//                                             Text(
//                                               '7-day free trial',
//                                               style : regular(
//                                                 color: Colors.white,
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//
//                                             ),Spacer(), Text(
//                                               '*BEST DEAL*',
//                                               style : regular(
//                                                 color: Colors.white,
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: Get.height * 0.030,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
