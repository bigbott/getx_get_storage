import 'package:get/get.dart';
import 'package:getx_get_storage/app/data/storage/get_storage_service.dart';

import 'composite_object_controller.dart';

class CompositeObjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompositeObjectController>(
      () => CompositeObjectController(storage: GetStorageService()),
    );
  }
}
