import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'composite_object_controller.dart';

class CompositeObjectView extends GetView<CompositeObjectController> {
  const CompositeObjectView({super.key});
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Composite object'),
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
                  'author: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  controller.article.author,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'claps: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  // String.fromCharCodes(controller.numbers),
                  controller.article.claps.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'clappers: ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  // String.fromCharCodes(controller.numbers),
                  controller.article.clappers.toString(),
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
