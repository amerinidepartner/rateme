import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingController extends GetxController{
  List<String> imageList = [
    'https://via.placeholder.com/400',
    'https://via.placeholder.com/400',
    'https://via.placeholder.com/400',
    'https://via.placeholder.com/400',
  ];
  final ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);
}