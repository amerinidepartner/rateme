import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../utils/asset_res.dart';

class MarchMeController extends GetxController{

  RxList nameList = [AssetRes.matchMeProfile,AssetRes.matchMeProfile,AssetRes.matchMeProfile,AssetRes.matchMeProfile,].obs;

  Rx<int> currentpage = 0.obs;
  Rx<bool> isMatchPass =  false.obs;
  Rx<PageController>  pageController = PageController().obs;

  onpagechanged(int index){
    currentpage.value = index;
   // update(["page_view"]);
  }

}