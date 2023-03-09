import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iskainan/widgets/small_text.dart';

import '../controllers/vendor_controller.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final pageId;
  AppColumn({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vendorProfile = Get.find<VendorController>().vendorList[pageId];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BigText(text: vendorProfile.vendorName!, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
                children: List.generate(4, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,))
            ),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: vendorProfile.vendorRating!),
            SizedBox(width: Dimensions.width10,),
            SmallText(text: vendorProfile.vendorLocation!),
          ],
        ),
        SizedBox(height: Dimensions.height10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.local_offer_rounded, text: vendorProfile.price_range.length > 1?"₱" + (vendorProfile.price_range).reduce((a, b) => a < b ? a : b).toStringAsFixed(2) + " - ₱" + (vendorProfile.price_range).reduce((a, b) => a > b ? a : b).toStringAsFixed(2):"₱" + (vendorProfile.price_range).reduce((a, b) => a < b ? a : b).toStringAsFixed(2), iconColor: AppColors.iconColor1,),
            IconAndTextWidget(icon: Icons.location_on, text: "203 m", iconColor: AppColors.mainColor,),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height10/2, bottom: Dimensions.height10/2, left: Dimensions.width10/2, right: Dimensions.width10/2),
              child: BigText(text: "GCASH", color: Colors.white, size: Dimensions.font20/2,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15/4),
                  color: vendorProfile.isGcash!?Colors.blue:Colors.grey
              ),
            )
          ],
        ),
      ],
    );
  }
}
