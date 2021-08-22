import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_test/pages/Profile/profile_controller.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.find();
    return Align(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Obx(() => Text("OtherPage ${profileController.count}"))],
      ),
    );
  }
}
