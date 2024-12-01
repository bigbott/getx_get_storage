import 'package:get/get.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

class HomeController extends GetxController {
  final StorageServiceInterface storage;

  String name = "John";
  int number = 10;
  bool enabled = false;

  HomeController({required this.storage});

  @override
  void onInit() {
    name = storage.loadString('name') ?? name;
    number = storage.loadInt('number');
    enabled = storage.loadBool('enabled');
    super.onInit();
  }

  void changeState() {
    name = "Merry";
    number = 20;
    enabled = true;
    storage.save('name', name);
    storage.save('number', number);
    storage.save('enabled', enabled);
  }

  void deleteAllFromStorage() {
    storage.deleteAll();
  }
}
