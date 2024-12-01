import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'list_controller.dart';

class ListView extends GetView<ListController> {
  const ListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'letters: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  controller.letters.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'numbers: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  // String.fromCharCodes(controller.numbers),
                  controller.numbers.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),

            SizedBox(height: 40,),
            ElevatedButton(onPressed: controller.changeState, child: Text(
                  'Change',
                  style: TextStyle(fontSize: 20),
                ),),
                                  ],
        ),
      ),
    );
  }
}
