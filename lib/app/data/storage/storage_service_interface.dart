import 'package:getx_get_storage/app/data/medium_article.dart';

abstract interface class StorageServiceInterface {

  String? loadString(key);

  bool loadBool(key);

  int loadInt(key);

  List<String>? loadListOfStrings(key);

  List<int>? loadListOfInts(key);

   void save(key,  val);

  MediumArticle? loadMediumArticle(key);
  void saveMediumArticle(key, MediumArticle article);

  List<MediumArticle>? loadMediumArticles(key);
  void saveMediumArticles(key, List<MediumArticle> articles);

  void deleteAll();
}
