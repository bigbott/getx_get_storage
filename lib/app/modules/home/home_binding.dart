import 'package:get/get.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(storage: Get.find<StorageServiceInterface>()),
    );
  }
}
