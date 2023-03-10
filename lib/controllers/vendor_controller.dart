
import 'dart:convert';

import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

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
      _vendorList.addAll(Vendors.fromJson({
        "contents":
        [
          {
            "vendor_id": 1,
            "vendor_name": "Mang Larry's Isawan",
            "vendor_location": "Emilio Jacinto St.",
            "vendor_img": "assets/images/manglarry.png",
            "vendor_rating": "4.3",
            "is_gcash": true,
            "operating_hours": "10 AM - 9 PM",
            "is_open": false,
            "contact_details": "09212347389",
            "email": "manglarry@gmail.com",
            "password": "password123",
            "vendor_menu":
            [
              {
                "food_id": 1,
                "food_name": "Isaw",
                "food_price": "25.00",
                "food_img": "assets/images/isaw.png",
                "is_available": true,
                "is_spicy": false,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": true,
                "is_fish": false,
                "is_soy": false
              }
            ]
          },
          {
            "vendor_id": 2,
            "vendor_name": "Arki Vickie",
            "vendor_location": "E. Delos Santos St.",
            "vendor_img": "assets/images/arkivickie.png",
            "vendor_rating": "4.5",
            "is_gcash": false,
            "operating_hours": "7 AM - 7 PM",
            "is_open": true,
            "contact_details": "",
            "email": "arkivickie@gmail.com",
            "password": "password123",
            "vendor_menu":
            [
              {
                "food_id": 1,
                "food_name": "Siomai",
                "food_price": "15.00",
                "food_img": "assets/images/siomai.png",
                "is_available": false,
                "is_spicy": false,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": true,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 2,
                "food_name": "Quarter Pounder",
                "food_price": "150.00",
                "food_img": "assets/images/burger.png",
                "is_available": false,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": true,
                "is_fish": false,
                "is_soy": false
              }
            ]
          },
          {
            "vendor_id": 3,
            "vendor_name": "Bulaluhan ni Steven",
            "vendor_location": "Area 2, Emilio Jacinto St.",
            "vendor_img": "assets/images/bulaluhan.png",
            "vendor_rating": "3.9",
            "is_gcash": true,
            "operating_hours": "7 AM - 7 PM",
            "is_open": true,
            "contact_details": "",
            "email": "bulaluhan@gmail.com",
            "password": "password123",
            "vendor_menu":
            [
              {
                "food_id": 1,
                "food_name": "Pork Sisig",
                "food_price": "70.00",
                "food_img": "assets/images/sisig.png",
                "is_available": true,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": true,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 2,
                "food_name": "Bulgogi",
                "food_price": "120.00",
                "food_img": "assets/images/bulgogi.png",
                "is_available": true,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": true,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 3,
                "food_name": "Carioca",
                "food_price": "50.00",
                "food_img": "assets/images/carioca.png",
                "is_available": false,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": true,
                "is_fish": false,
                "is_soy": false
              }
            ]
          },
          {
            "vendor_id": 4,
            "vendor_name": "Rodic's",
            "vendor_location": "Balagtas St.",
            "vendor_img": "assets/images/rodic.png",
            "vendor_rating": "4.5",
            "is_gcash": true,
            "operating_hours": "7 AM - 7 PM",
            "is_open": true,
            "contact_details": "",
            "email": "rodic@gmail.com",
            "password": "password123",
            "vendor_menu":
            [
              {
                "food_id": 1,
                "food_name": "Reuben Hotdog",
                "food_price": "89.00",
                "food_img": "assets/images/hotdog.png",
                "is_available": true,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 2,
                "food_name": "French Onion Rings",
                "food_price": "49.00",
                "food_img": "assets/images/onionrings.png",
                "is_available": true,
                "is_spicy": false,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 3,
                "food_name": "Shawarma Rice",
                "food_price": "99.00",
                "food_img": "assets/images/shawarmarice.png",
                "is_available": true,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 4,
                "food_name": "Chicken Tonkatsu",
                "food_price": "109.00",
                "food_img": "assets/images/tonkatsu.png",
                "is_available": true,
                "is_spicy": false,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 1,
                "food_name": "Reuben Hotdog",
                "food_price": "89.00",
                "food_img": "assets/images/hotdog.png",
                "is_available": true,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 2,
                "food_name": "French Onion Rings",
                "food_price": "49.00",
                "food_img": "assets/images/onionrings.png",
                "is_available": true,
                "is_spicy": false,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 3,
                "food_name": "Shawarma Rice",
                "food_price": "99.00",
                "food_img": "assets/images/shawarmarice.png",
                "is_available": true,
                "is_spicy": true,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              },
              {
                "food_id": 4,
                "food_name": "Chicken Tonkatsu",
                "food_price": "109.00",
                "food_img": "assets/images/tonkatsu.png",
                "is_available": true,
                "is_spicy": false,
                "is_shellfish": false,
                "is_peanut": false,
                "is_milk": false,
                "is_fish": false,
                "is_soy": false
              }
            ]
          }
        ]
      }).contents);
      _isLoaded = true;
      update(); // refresh app
    }else{

    }
  }
}