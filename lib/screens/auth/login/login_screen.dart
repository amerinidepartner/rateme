import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_me/screens/auth/login/login_controller.dart';
import 'package:rate_me/screens/phone_verification/phone_varification_screen.dart';
import 'package:rate_me/utils/asset_res.dart';
import 'package:rate_me/utils/colour_res.dart';
import 'package:rate_me/utils/string_res.dart';
import 'package:rate_me/utils/text_style.dart';

class LoginScreen extends StatelessWidget {
    LoginScreen({super.key});

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height:Get.height,
            width: Get.width,
            child: Image.asset(AssetRes.loginBg,fit: BoxFit.fill,),
          ),
          Column(
            children: [
              SizedBox(height: Get.height * 0.150),
              Image.asset(AssetRes.blackLogo, color: const Color(0xFFFF8EBE)),
              Text(StringRes.RateMe,
                  style: regular(
                      fontFamily: "Poppins-SemiBold",
                      color: const Color(0xFFFF8EBE),
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              const Spacer(),
              loginController.commonRow(StringRes.loginDes1, "Terms"),
              loginController.commonRow(StringRes.loginDes2, "Privacy"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Policy",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorRes.colorFFFFFF,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          shadows: [
                            Shadow(
                                blurRadius: 5,
                                color: Colors.black26,
                                offset: Offset(0, 4))
                          ])),
                  SizedBox(width: Get.width * 0.01),
                  const Text("and",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorRes.colorFFFFFF,
                          fontFamily: "Poppins-Medium",
                          shadows: [
                            Shadow(
                                blurRadius: 5,
                                color: Colors.black26,
                                offset: Offset(0, 4))
                          ])),
                  SizedBox(width: Get.width * 0.01),
                  const Text("Cookies Policy.",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorRes.colorFFFFFF,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          shadows: [
                            Shadow(
                                blurRadius: 5,
                                color: Colors.black26,
                                offset: Offset(0, 4))
                          ])),
                ],
              ),
              SizedBox(height: Get.height * 0.026),

        InkWell(
          onTap: () {
            loginController.signInWithGoogle();
          },
          child: Container(
            height: 45,
            width: Get.width * 0.8,
            decoration: const BoxDecoration(
              color: ColorRes.colorFFFFFF,
              borderRadius: BorderRadius.all(Radius.circular(25)),

              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 3,
                  // spreadRadius: 5,
                  color: Colors.black26,
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(AssetRes.googleIcon,scale: 1.0),
                ),
                SizedBox(width: Get.width * 0.08),
                Text( StringRes.loginWithGoogle,style: medium(color: ColorRes.colorFF373737,fontSize: 14),)
              ],
            ),
          ),
        ),

              // loginController.commonContainer(
              //     AssetRes.googleIcon, StringRes.loginWithGoogle, 1.0),
              SizedBox(height: Get.height * 0.026),

              InkWell(
                onTap: () {
                  Get.to(()=> PhoneVerificationScreen(isCheck: true,));
                },
                child: Container(
                  height: 45,
                  width: Get.width * 0.8,
                  decoration: const BoxDecoration(
                    color: ColorRes.colorFFFFFF,
                    borderRadius: BorderRadius.all(Radius.circular(25)),

                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 3,
                        // spreadRadius: 5,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(AssetRes.callIcon,scale: 1.3),
                      ),
                      SizedBox(width: Get.width * 0.08),
                      Text( StringRes.loginWithPhone,style: medium(color: ColorRes.colorFF373737,fontSize: 14),)
                    ],
                  ),
                ),
              ),

              // loginController.commonContainer(
              //     AssetRes.callIcon, StringRes.loginWithPhone,1.3),

              SizedBox(height: Get.height * 0.026),

              InkWell(
                onTap: () {

                },
                child: Container(
                  height: 45,
                  width: Get.width * 0.8,
                  decoration: const BoxDecoration(
                    color: ColorRes.colorFFFFFF,
                    borderRadius: BorderRadius.all(Radius.circular(25)),

                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 3,
                        // spreadRadius: 5,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(AssetRes.appleIcon,scale: 1.0),
                      ),
                      SizedBox(width: Get.width * 0.08),
                      Text( StringRes.loginWithApple,style: medium(color: ColorRes.colorFF373737,fontSize: 14),)
                    ],
                  ),
                ),
              ),

              // loginController.commonContainer(
              //     AssetRes.appleIcon, StringRes.loginWithApple, 1.0),

              SizedBox(height: Get.height * 0.026),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(StringRes.dontHaveAccount,
                      style: TextStyle(
                          color: ColorRes.colorFFFFFF,
                          fontSize: 13,
                          shadows: [
                            Shadow(
                                blurRadius: 5,
                                color: Colors.black26,
                                offset: Offset(0, 4))
                          ])),
                  SizedBox(width: Get.width * 0.01),
                  InkWell(
                    onTap: () {
                      Get.to(()=> PhoneVerificationScreen(isCheck: false,));
                    },
                    child:  Text("Sign Up",
                        style: TextStyle(
                            fontSize: 13,
                            color: ColorRes.colorFFFFFF,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  blurRadius: 5,
                                  color: Colors.black26,
                                  offset: Offset(0, 4))
                            ])),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.05),
            ],
          ),
        ],
      ),
    );

  }
}
