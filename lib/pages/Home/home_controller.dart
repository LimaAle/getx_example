import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_test/pages/Other/other_page.dart';
import 'package:get_test/pages/Profile/profile_page.dart';

class HomeController extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  final Rx<int> currentIndex = 0.obs;
  final List<Widget> pageList = [
    ProfilePage(),
    OtherPage(),
  ];
  void changePage(String page)=>Get.toNamed(page);
  onItemTapped(int index) => currentIndex(index);
}
