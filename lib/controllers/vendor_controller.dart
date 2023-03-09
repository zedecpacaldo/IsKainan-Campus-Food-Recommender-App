
import 'dart:convert';

import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/repository/vendors_repo.dart';
import '../models/vendors_model.dart';

class VendorController extends GetxController{
  final VendorRepo vendorRepo;
  VendorController({required this.vendorRepo});
  List<dynamic> _vendorList = [];
  List<dynamic> get vendorList =>_vendorList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getVendorList()async {
    Response response = await vendorRepo.getVendorList();
    // successful

    if(response.statusCode == 200){
      _vendorList = [];
      _vendorList.addAll(Vendors.fromJson(jsonDecode(response.body)).contents);
      _isLoaded = true;
      update(); // refresh app
    }else{

    }
  }
}