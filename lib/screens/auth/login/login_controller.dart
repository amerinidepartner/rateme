import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rate_me/screens/Dashboard/dashboard_screen.dart';
import 'package:rate_me/utils/colour_res.dart';

import '../../phone_verification/phone_varification_screen.dart';

class LoginController extends GetxController {

  bool isCheck = false;


  commonRow(title, title2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: ColorRes.colorFFFFFF,
              fontFamily: "Poppins-Medium", shadows: [Shadow(
                  blurRadius: 5,
                  color: Colors.black26,
                  offset: Offset(0, 4))
              ]),

        ),
        SizedBox(width: Get.width * 0.01),
        Text(title2, style: const TextStyle(fontSize: 12,
            color: ColorRes
                .colorFFFFFF,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            shadows: [Shadow(
                blurRadius: 5,
                color: Colors.black26,
                offset: Offset(0, 4))
            ])),
      ],
    );
  }


  Future<void> signInWithGoogle() async {

    try{

      GoogleSignIn googleSignIn = GoogleSignIn();

      var result = await googleSignIn.signIn();
      if(result == null){
        return;
      }

      final userData = await  result.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: userData.accessToken,
        idToken: userData.idToken,
      );
      var finalResult =  await FirebaseAuth.instance.signInWithCredential(credential);

      print("=============================> Google Sign SuccessFully <=========================================");

      print(result.email);
      print(result.photoUrl);
      print(result.displayName);

      Get.to(()=>PhoneVerificationScreen(isCheck: true,));

    }catch(e){
      print(e);
    }

  }


}
