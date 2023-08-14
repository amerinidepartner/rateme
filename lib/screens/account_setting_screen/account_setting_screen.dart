import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/account_setting_screen/account_setting_controller.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/text_style.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AccountSettingController accountSettingController = Get.put(AccountSettingController());

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AssetRes.accountSettingBg,
              height: Get.height,
              width: Get.width, fit: BoxFit.cover),
          SafeArea(
            child: Column(
              children: [

                /// ------------------------------------- app bar --------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset(
                              AssetRes.arrowLeft,
                              height: 30,
                              width: 30,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            AssetRes.setting,
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                /// ------------------------------------- middle area  --------------------------------------------------------------------

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Stack(alignment: Alignment.center, children: [
                                    Image.asset(
                                      AssetRes.round,
                                      height: Get.height * 0.16,
                                      width: Get.height * 0.16,
                                    ),
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Image.asset(
                                          AssetRes.profilePic,
                                          height: Get.height * 0.14,
                                          width: Get.height * 0.14,
                                        ),
                                        Image.asset(
                                          AssetRes.edit,
                                          height: 30,
                                          width: 30,
                                        ),
                                      ],
                                    ),
                                  ]),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Elena",
                                            style: regular(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Image.asset(
                                            AssetRes.check,
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            "23",
                                            style: regular(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "@elenalovesyou",
                                        style: regular(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: Colors.white.withOpacity(0.50),
                                        ),
                                      ),
                                      Text(
                                        "FLORIDA STATE UNIVERSITY",
                                        style: regular(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          color: Colors.white.withOpacity(0.5),
                          child: Text(
                            "HELLO, MY NAME IS ELENA AND I AM A CREATOR ON THIS PLATFORM. I ATTEND FLORIDA STATE AND LOVE SPORTS.",
                            style: regular(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('4.7k', style: blackShadow),
                                      Text(
                                        'rates'.toUpperCase(),
                                        style: blackShadow.copyWith(
                                            fontSize: 15, height: 0.8),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '9.22',
                                        style:
                                            blackShadow.copyWith(fontSize: 71),
                                      ),
                                      Text(
                                        'average score'.toUpperCase(),
                                        style: blackShadow.copyWith(
                                            fontSize: 15, height: -0.2),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('#277', style: blackShadow),
                                      Text(
                                        'ranked'.toUpperCase(),
                                        style: blackShadow.copyWith(
                                            fontSize: 15, height: 0.8),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.03,
                              ),
                              SizedBox(
                                height: Get.height * 0.4,
                                width: Get.width * 0.8,
                                child: Swiper(
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 6,
                                        ),
                                      ),
                                      child: Image.asset(
                                        AssetRes.matchMePaid1,
                                        fit: BoxFit.fill,
                                      ),
                                    );
                                  },
                                  itemCount: 10,
                                  itemWidth: 200.0,
                                  layout: SwiperLayout.STACK,
                                  viewportFraction: 0.8,
                                  scale: 0.6,
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.08,
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: Get.height * 0.025,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Container(
                                  height: Get.height * 0.025,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ],
                            ),
                            Text(
                              'LINKED SOCIAL MEDIA',
                              style: blackShadow.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          color: Colors.black.withOpacity(0.79),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AssetRes.twitter,
                                height: 34,
                                width: 34,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AssetRes.instagram,
                                height: 34,
                                width: 34,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                AssetRes.snapChat,
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: Get.height * 0.025,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
