import 'package:get/get.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

class ListController extends GetxController {
  final StorageServiceInterface storage;

  List<String> letters = [];
  List<int> numbers = [];

  ListController({required this.storage});

  @override
  void onInit() {
    letters = storage.loadListOfStrings('letters') ?? [];
    numbers = storage.loadListOfInts('numbers') ?? [];
    super.onInit();
  }

  void changeState() {
    letters = ['a', 'b', 'c'];
    numbers = [1, 2, 3];

    storage.save('letters', letters);
    storage.save('numbers', numbers);
  }
}
