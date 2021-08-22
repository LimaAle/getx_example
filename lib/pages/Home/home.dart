import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_test/pages/Home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
      ),key: controller.scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Go to wallet'),
              onTap:()=> controller.changePage('/wallet'),
            )
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Other')
          ],
          currentIndex: controller.currentIndex.value,
          onTap: controller.onItemTapped,
          showSelectedLabels: true,
        ),
      ),
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: controller.pageList,
          )),
    );
  }
}
