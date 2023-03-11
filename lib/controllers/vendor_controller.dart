
import 'dart:convert';

import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/hardcoded_data.dart';
import '../data/repository/vendors_repo.dart';
import '../models/vendors_model.dart';

class VendorController extends GetxController{
  final VendorRepo vendorRepo;
  VendorController({required this.vendorRepo});
  List<VendorModel> _vendorList = [];
  List<VendorModel> get vendorList =>_vendorList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getVendorList()async {
    Response response = await vendorRepo.getVendorList();
    // successful

    if(/*response.statusCode == 200*/true){
      _vendorList = [];
      _vendorList.addAll(Vendors.fromJson(data).contents);
      _isLoaded = true;
      update(); // refresh app
    }else{

    }
  }
}