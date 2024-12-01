import 'package:get/get.dart';

import 'list_of_objects_controller.dart';

class ListOfObjectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListOfObjectsController>(
      () => ListOfObjectsController(),
    );
  }
}
