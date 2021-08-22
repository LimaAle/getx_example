import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_test/pages/Profile/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController control = Get.put(ProfileController());
    return Align(
      child: Column(
        children: [
          Text('Profiel'),
          Obx(() => Text('Counter ${control.count}')),
          ElevatedButton(
              onPressed: control.increment, child: Text("Incrementar"))
        ],
      ),
    );
  }
}
