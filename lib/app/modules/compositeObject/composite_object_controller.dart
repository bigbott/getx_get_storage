import 'package:get/get.dart';
import 'package:getx_get_storage/app/data/medium_article.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

class CompositeObjectController extends GetxController {
  final StorageServiceInterface storage;

  CompositeObjectController({required this.storage});

  MediumArticle article = MediumArticle(author: '', claps: 0, clappers: []);

  @override
  void onInit() {
    article = storage.loadMediumArticle('article') ?? article;
    super.onInit();
  }

  void changeState() {
    article = MediumArticle(
        author: 'Yuri Novicow', claps: 45, clappers: ["John Doe", "Imra Khan"]);
    storage.saveMediumArticle('article', article);
  }
}
