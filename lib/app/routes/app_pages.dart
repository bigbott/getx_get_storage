import 'package:get/get.dart';

import '../modules/compositeObject/composite_object_binding.dart';
import '../modules/compositeObject/composite_object_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/list/list_binding.dart';
import '../modules/list/list_view.dart';
import '../modules/listOfObjects/list_of_objects_binding.dart';
import '../modules/listOfObjects/list_of_objects_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),



    GetPage(
      name: _Paths.LIST,
      page: () => const ListView(),
      binding: ListBinding(),
    ),
    GetPage(
      name: _Paths.COMPOSITE_OBJECT,
      page: () => const CompositeObjectView(),
      binding: CompositeObjectBinding(),
    ),
    GetPage(
      name: _Paths.LIST_OF_OBJECTS,
      page: () => const ListOfObjectsView(),
      binding: ListOfObjectsBinding(),
    ),
  ];
}
