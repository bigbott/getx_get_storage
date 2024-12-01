import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_get_storage/app/data/storage/get_storage_service.dart';
import 'package:getx_get_storage/app/data/storage/storage_service_interface.dart';

import 'app/routes/app_pages.dart';

void main() async{
  await GetStorage.init();
  Get.put<StorageServiceInterface>(GetStorageService(), permanent: true);

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

    ),
  );
}
