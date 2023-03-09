class Vendors {
  late List<VendorModel> _contents;
  List<VendorModel> get contents => _contents;

  Vendors({required contents}){
    this._contents = contents;
  }

  Vendors.fromJson(Map<String, dynamic> json) {
    if (json['contents'] != null) {
    _contents = <VendorModel>[];
      json['contents'].forEach((v) {
        _contents!.add(VendorModel.fromJson(v));
      });
    }
  }
}

class VendorModel {
  int? vendorId;
  String? vendorName;
  String? vendorLocation;
  String? vendorImg;
  String? vendorRating;
  bool? isGcash;
  String? operatingHours;
  bool? isOpen;
  String? contactDetails;
  String? email;
  String? password;
  late List<FoodModel> _food_model;
  List<FoodModel> get food_model =>_food_model;

  late List<double> _price_range;
  List<double> get price_range => _price_range;

  VendorModel(
      {required vendorId,
        required vendorName,
        required vendorLocation,
        required vendorImg,
        required vendorRating,
        required isGcash,
        required operatingHours,
        required isOpen,
        required contactDetails,
        required email,
        required password,
        required food_model}){
    this._food_model = food_model;
    this._price_range = food_model.map((element) => double.parse(element.foodPrice!)).toList();
  }

  VendorModel.fromJson(Map<String, dynamic> json) {
    vendorId = json['vendor_id'];
    vendorName = json['vendor_name'];
    vendorLocation = json['vendor_location'];
    vendorImg = json['vendor_img'];
    vendorRating = json['vendor_rating'];
    isGcash = json['is_gcash'];
    operatingHours = json['operating_hours'];
    isOpen = json['is_open'];
    contactDetails = json['contact_details'];
    email = json['email'];
    password = json['password'];
    if (json['vendor_menu'] != null) {
      _food_model = <FoodModel>[];
      json['vendor_menu'].forEach((v) {
        _food_model.add(FoodModel.fromJson(v));
      });
    }
    _price_range = [];
    this._price_range = food_model.map((element) => double.parse(element.foodPrice!)).toList();
  }
}

class FoodModel {
  int? foodId;
  String? foodName;
  String? foodPrice;
  String? foodImg;
  bool? isAvailable;
  bool? isSpicy;
  bool? isShellfish;
  bool? isPeanut;
  bool? isMilk;
  bool? isFish;
  bool? isSoy;

  FoodModel(
      {this.foodId,
        this.foodName,
        this.foodPrice,
        this.foodImg,
        this.isAvailable,
        this.isSpicy,
        this.isShellfish,
        this.isPeanut,
        this.isMilk,
        this.isFish,
        this.isSoy});

  FoodModel.fromJson(Map<String, dynamic> json) {
    foodId = json['food_id'];
    foodName = json['food_name'];
    foodPrice = json['food_price'];
    foodImg = json['food_img'];
    isAvailable = json['is_available'];
    isSpicy = json['is_spicy'];
    isShellfish = json['is_shellfish'];
    isPeanut = json['is_peanut'];
    isMilk = json['is_milk'];
    isFish = json['is_fish'];
    isSoy = json['is_soy'];
  }
}