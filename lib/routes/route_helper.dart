import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:iskainan/pages/Home/main_page.dart';
import 'package:iskainan/pages/food/recommended_food_detail.dart';

import '../pages/food/popular_food_detail.dart';

class RouteHelper{
  static const String initial = "/";       // homepage
  static const String vendor = "/vendor";  // vendor page
  static const String foodDetail = "/food-detail";

  static String getInitial()=>'$initial';
  static String getVendor(int pageId)=>'$vendor?pageId=$pageId';
  static String getFoodDetail(int pageId)=>'$foodDetail?pageId=$pageId';

  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=> MainPage()),

    GetPage(name: vendor, page:(){
      var pageId = Get.parameters['pageId'];
      return PopularFoodDetail(pageId: int.parse(pageId!));
      },
    ),

    GetPage(name: foodDetail, page:(){
      var pageId = Get.parameters['pageId'];
      return RecommendedFoodDetail(pageId: int.parse(pageId!));
    },
    ),
  ];
}