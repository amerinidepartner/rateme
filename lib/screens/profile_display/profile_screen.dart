import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/profile_display/profile_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/text_style.dart';
import '../account_setting_screen/account_setting_screen.dart';
import '../language_setting/language_setting_screen.dart';
import '../manage_payment _screen/manage_payment_screen.dart';
import '../manage_payment/manage_payment_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AssetRes.profile2,
              fit: BoxFit.cover,
              width: Get.width,
            ),
            Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height * 0.44,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Account Settings",
                                  style:
                                      medium(color: Colors.black, fontSize: 18),
                                ),
                                Spacer(),
                                Text(
                                  'Edit',
                                  style: medium(
                                          color: ColorRes.commonButtonColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 14, bottom: 9, left: 11, right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                border: Border.all(color: ColorRes.colorC6C6C6),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Name',
                                    style: medium(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Elena',
                                    style: regular(
                                      color: ColorRes.color5F5F5F,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 14, bottom: 9, left: 11, right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                border: Border.all(color: ColorRes.colorC6C6C6),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Phone Number',
                                    style: medium(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '+1234567890',
                                    style: regular(
                                      color: ColorRes.color5F5F5F,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 14, bottom: 9, left: 11, right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                border: Border.all(color: ColorRes.colorC6C6C6),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '',
                                    style: medium(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '',
                                    style: regular(
                                      color: ColorRes.color5F5F5F,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 14, bottom: 9, left: 11, right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                border: Border.all(color: ColorRes.colorC6C6C6),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Email',
                                    style: medium(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'elena@nyu.us',
                                    style: regular(
                                      color: ColorRes.color5F5F5F,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AssetRes.box,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Plan Settings",
                                  style: medium(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Upgrade now? >",
                                  style: medium(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(()=>managePaymentScreen());
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 14, bottom: 9, left: 11, right: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  border: Border.all(color: ColorRes.colorC6C6C6),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Current Plan',
                                      style: regular(
                                        color: ColorRes.color5F5F5F,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Free',
                                      style: medium(
                                        color: ColorRes.commonButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(

                        padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AssetRes.bg2,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),

child: Column(
  children: [
    Row(
        children: [
          Text(
            "Discovery Settings",
            style: medium(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

        ],
    ),
    SizedBox(
        height: Get.height * 0.02,
    ),
    Container(
        padding: EdgeInsets.only(
            top: 14, bottom: 9, left: 11, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5,
          ),
          border: Border.all(color: ColorRes.colorC6C6C6),
        ),
        child: Row(
          children: [
            Text(
              'Location',
              style: regular(
                color: ColorRes.color5F5F5F,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Spacer(),
            Text(
              'My Current Location',
              style: medium(
                color: ColorRes.commonButtonColor,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
    ),
    SizedBox(
        height: Get.height * 0.02,
    ),
    InkWell(
        onTap: () {
          Get.to(()=>LanguageSettingScreen());
        },
        child: Container(
          padding: EdgeInsets.only(
              top: 14, bottom: 9, left: 11, right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5,
            ),
            border: Border.all(color: ColorRes.colorC6C6C6),
          ),
          child: Row(
            children: [
              Text(
                'Preferred Languages',
                style: regular(
                  color: ColorRes.color5F5F5F,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Spacer(),
              Text(
                'English',
                style: medium(
                  color: ColorRes.commonButtonColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
    ),
    SizedBox(
        height: Get.height * 0.02,
    ),
    InkWell(
        onTap: () {
          //Get.to(()=>ShowMeScreen());
        },
        child: Container(
          padding: EdgeInsets.only(
              top: 14, bottom: 9, left: 11, right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5,
            ),
            border: Border.all(color: ColorRes.colorC6C6C6),
          ),
          child: Row(
            children: [
              Text(
                'Show Me',
                style: regular(
                  color: ColorRes.color5F5F5F,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Spacer(),
              Text(
                'Men',
                style: medium(
                  color: ColorRes.commonButtonColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
    ),
    SizedBox(
        height: Get.height * 0.45,
    ),
    Container(
        alignment: Alignment.center,
        width: Get.width,
        padding: EdgeInsets.only(
            top: 14, bottom: 9, left: 11, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5,
          ),
          border: Border.all(color: ColorRes.colorC6C6C6),
        ),
        child: Text(
          'Logout',
          style: medium(
            color: ColorRes.black,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
    ),
    SizedBox(
        height: Get.height * 0.02,
    ),
    Container(
        alignment: Alignment.center,
        width: Get.width,
        padding: EdgeInsets.only(
            top: 14, bottom: 9, left: 11, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5,
          ),
          border: Border.all(color: ColorRes.colorC6C6C6),
        ),
        child: Text(
          'Delete Account',
          style: medium(
            color: ColorRes.colorC02929,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
    ),
    SizedBox(
        height: Get.height * 0.090,
    ),

  ],
),                    ),
                    ],
                  ),
                ),
                Stack(children: [
                  Image.asset(
                    AssetRes.nineEight,
                    width: Get.width,
                    height: Get.height * 0.42,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 24, top: Get.height * 0.040),
                        child: Row(
                          children: [
                            Image.asset(
                              AssetRes.arrowLeft,
                              height: 25,
                              width: 25,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: Get.width * 0.33,
                            ),
                            Text('Profile',
                                style: w700TextStyle.copyWith(
                                  fontSize: 20,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                            alignment: Alignment.center, children: [
                        Image.asset(
                          AssetRes.round,
                          height: Get.height * 0.22,
                          width: Get.height * 0.22,
                        ),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image.asset(
                              AssetRes.profilePic,
                              height: Get.height * 0.19,
                              width: Get.height * 0.19,
                            ),
                            Image.asset(
                              AssetRes.edit,
                              height: 40,
                              width: 40,
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(AccountSettingScreen());
                        },
                        child: Container(
                          height: 20,
                          color: Colors.transparent,
                          child: Text(
                            "@elenalovesyou",
                            style:
                                w700TextStyle.copyWith(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ));
  }
}
