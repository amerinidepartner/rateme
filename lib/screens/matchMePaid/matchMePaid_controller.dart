import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rate_me/utils/asset_res.dart';

class MatchMePaidController extends GetxController{

  bool isFuture = false;

  List paid = [AssetRes.matchMePaid1,AssetRes.matchMePaid2,AssetRes.matchMePaid3,AssetRes.matchMePaid4,AssetRes.matchMePaid5,AssetRes.matchMePaid6];
  List unPaid = [AssetRes.matchesbg,AssetRes.matchesbg,AssetRes.matchesbg,AssetRes.matchesbg,AssetRes.matchesbg,AssetRes.matchesbg];

  void onInit(){
    future();
  }

  void future(){
    Future.delayed(Duration(seconds: 4)).then((value){
      isFuture = true;
      update(["paid"]);
    });
  }
}