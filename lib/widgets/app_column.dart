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
  const AppColumn({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vendorProfile = Get.find<VendorController>().vendorList[pageId];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: vendorProfile.vendorName!, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,))
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
            IconAndTextWidget(icon: Icons.local_offer_rounded, text: "₱", iconColor: AppColors.iconColor1,),
            IconAndTextWidget(icon: Icons.location_on, text: "203 m", iconColor: AppColors.mainColor,),
            IconAndTextWidget(icon: Icons.access_time_rounded, text: "4 min", iconColor: AppColors.mainColor),
          ],
        ),
      ],
    );
  }
}
