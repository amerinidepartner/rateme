import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate_me/common/bottom_bar.dart';
import 'package:rate_me/screens/chat_flow/chat_home_screen/chatHome_screen.dart';
import 'package:rate_me/screens/homescreen/homescreen.dart';
import 'package:rate_me/screens/leaderboards/leaderboaeds_profile_screen.dart';
import 'package:rate_me/screens/matchMePaid/matchMePaid_screen.dart';
import 'package:rate_me/screens/matchMeUser/matchMeUser_screen.dart';
import '../../../utils/asset_res.dart';
import '../matchme_home/matchMe_home_screen.dart';
import '../notification/notification.dart';
import '../profile_display/profile_screen.dart';
import 'dashboard_controller.dart';

class DashBoardScreen extends StatelessWidget {
   DashBoardScreen({Key? key}) : super(key: key);

   DashBoardController dashBoardController = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: Color(0xFFEC78AB),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GetBuilder<DashBoardController>(
              id: 'bottom_bar',
              builder: (controller) {
                if (controller.currentTab == 0) {
                  return  HomeScreen();
                } else if (controller.currentTab == 1) {
                  return  LeaderboardsProfileScreen();
                } else if (controller.currentTab == 2) {
                  return  ChatHomeScreen();
                } else if (controller.currentTab == 3) {
                 return  ProfileScreen();
                }
                return const SizedBox();
              }),
          bottomNavigationBar2(context),
        ],
      )
     // bottomNavigationBar: bottomNavigationBar2(context),
    );
  }
}
