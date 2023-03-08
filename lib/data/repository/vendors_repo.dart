import 'package:get/get.dart';
import 'package:iskainan/data/api/api_client.dart';
import '../../utils/app_constants.dart';

class VendorRepo extends GetxService{
  final ApiClient apiClient;
  VendorRepo({required this.apiClient});

  Future<Response> getVendorList() async{
    return await apiClient.getData(AppConstants.VENDOR_URI);
  }
}