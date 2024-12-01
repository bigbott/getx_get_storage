
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_get_storage/app/data/medium_article.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

final class GetStorageService extends GetxService
    implements StorageServiceInterface {
  final box = GetStorage();

  @override
  String? loadString(key) {
    return box.read(key);
  }

  @override
  bool loadBool(key) {
    bool? val = box.read<bool>(key);
    if (val == null) {
      return false;
    }
    return val;
  }

  @override
  int loadInt(key) {
    int? val = box.read<int>(key);
    if (val == null) {
      return 0;
    }
    return val;
  }

  @override
  List<String> loadListOfStrings(key) {
    List<dynamic>? value = box.read(key);
    if (value == null) {
      return [];
    }
    return value.cast<String>();
  }

  @override
  List<int> loadListOfInts(key) {
    List<dynamic>? value = box.read(key);
    if (value == null) {
      return [];
    }
    return value.cast<int>();
  }

  @override
  void save(key, val) {
    box.write(key, val);
  }

  @override
  MediumArticle? loadMediumArticle(key) {
    String? json = box.read(key);
    return json == null ? null : mediumArticleFromJson(json);
  }

  @override
  void saveMediumArticle(key, MediumArticle article) {
    box.write(key, mediumArticleToJson(article));
  }

  @override
  List<MediumArticle>? loadMediumArticles(key) {
    String? json = box.read(key);
    return json == null ? null : mediumArticlesFromJson(json);
  }

  @override
  void saveMediumArticles(key, List<MediumArticle> articles) {
    box.write(key, mediumArticlesToJson(articles));
  }

  @override
  void deleteAll() {
    box.erase();
  }
}
