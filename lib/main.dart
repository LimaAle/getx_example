import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_test/pages/Home/home.dart';
import 'package:get_test/pages/Wallet/wallet_page.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => HomePage()),
      GetPage(
          name: '/wallet',
          page: () => WalletPage(),
          transition: Transition.leftToRightWithFade)
    ],
  ));
}
