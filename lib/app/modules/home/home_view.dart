import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_get_storage/app/routes/app_pages.dart';

import 'home_controller.dart';

final class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  controller.name,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'number: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  controller.number.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'enabled: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  controller.enabled.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: controller.changeState,
              child: Text(
                'Change',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: controller.deleteAllFromStorage,
              child: Text(
                'Delete All',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.LIST);
                },
                child: Text(
                  'Lists of primitives',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.COMPOSITE_OBJECT);
                },
                child: Text(
                  'Composite object',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
