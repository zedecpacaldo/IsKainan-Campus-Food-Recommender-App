import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iskainan/controllers/vendor_controller.dart';


import '../data/api/api_client.dart';

import '../data/repository/vendors_repo.dart';
import '../utils/app_constants.dart';

Future<void> init()async { // init() method
  // apiClient
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));

  // repository
  Get.lazyPut(()=>VendorRepo(apiClient:Get.find()));

  // controllers
  Get.lazyPut(()=>VendorController(vendorRepo: Get.find()));
}