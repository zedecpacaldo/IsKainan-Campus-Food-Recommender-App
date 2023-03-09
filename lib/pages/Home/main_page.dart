import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

import 'food_page_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Portion + search button (showing the head)
          Container(
            child: Container(
                margin: EdgeInsets.only(top: Dimensions.height45, bottom : Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width20),
                child: Row(                                                                                                       // Top Portion
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "IsKainan!", color: AppColors.mainColor),                                                  // Top Left Corner
                        Row(
                          children: [
                            SmallText(text: "Apacible St.", color: Colors.black54,),                                              // Small Word sa top corner
                            Icon(Icons.arrow_drop_down_rounded),
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          child: Icon(Icons.restaurant_menu, color: Colors.white, size: Dimensions.iconSize24,),                                                         // Search Icon
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                              color: AppColors.mainColor,
                          )
                      ),
                    )
                  ],
                )
            ),
            ),
          // Showing the Body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}