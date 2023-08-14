import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rate_me/utils/asset_res.dart';

class HomeController extends GetxController{

  List nameList = [AssetRes.homeProfileImg,AssetRes.homeProfileImg,AssetRes.homeProfileImg,AssetRes.homeProfileImg,AssetRes.homeProfileImg,];

  Rx<int> currentpage = 0.obs;
    Rx<bool> isMatch =  false.obs;
  Rx<PageController>  pageController = PageController().obs;

  onpagechanged(int index){
      currentpage.value = index;
     // update(["page_view"]);
  }

 }
