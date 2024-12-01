import 'package:get/get.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

import 'list_controller.dart';

class ListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListController>(
      () => ListController(storage: Get.find<StorageServiceInterface>()),
    );
  }
}
