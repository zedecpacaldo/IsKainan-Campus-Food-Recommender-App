import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iskainan/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Picture
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/manglarry.png"
                    )
                  )
                ),
              )),
          // Top Icons
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.hotel_class)
                ],
          )),
          // Bottom Section
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft:  Radius.circular(Dimensions.radius20)
                ),
              color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Jolly Spaghetti"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduction"),
                  SizedBox(height: Dimensions.height10),
                  Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "A popular Filipino dish that features al dente spaghetti noodles smothered in a sweet, meaty red sauce. The sauce is typically made with ground beef, sliced hot dogs, and tomato sauce, and it's often topped with grated cheese for added flavor. Jolly Spaghetti is known for its distinct taste that appeals to both kids and adults alike, making it a staple dish at birthday parties, family gatherings, and other special occasions. The dish's vibrant colors and flavors make it a fun and enjoyable meal that's sure to put a smile on anyone's face."))
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
        bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20*2),
              topRight: Radius.circular(Dimensions.radius20*2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(Icons.soup_kitchen,),
                    SizedBox(width: Dimensions.width10/2,),
                    BigText(text: "Open"),],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                child: BigText(text: "Find on Map", color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor
                ),
              )
            ],
          ),
    ),
    );
  }
}
