import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iskainan/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.location_on),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size: Dimensions.font26, text: "Taco de la Costa")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food3.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "A delicious and sophisticated take on the classic taco. Inspired by the fresh flavors of coastal cuisine, this taco features a variety of seafood fillings, including succulent shrimp, tender crab meat, or flaky fish. Each taco is topped with bright and tangy salsas or creamy avocado crema, adding a burst of flavor that perfectly complements the seafood. The name Taco de la Costa evokes images of sun, sand, and sea, making it a perfect choice for anyone seeking a taste of the coast in a single bite. Taco de la Costa is the perfect choice for seafood lovers who crave a bit of sophistication in their tacos. The seafood fillings are cooked to perfection, ensuring that each bite is succulent and bursting with flavor. The salsas and avocado crema add a bright and fresh element to the dish, perfectly complementing the rich flavors of the seafood. Whether you're in the mood for shrimp, crab, or fish, Taco de la Costa is sure to satisfy your craving for coastal cuisine. The name itself conjures up images of white sandy beaches, crystal clear waters, and the salty breeze of the ocean, transporting you to a world of relaxation and indulgence with every bite. "),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: Dimensions.bottomHeightBar-Dimensions.height20,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20*2),
                topRight: Radius.circular(Dimensions.radius20*2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.soup_kitchen,),
                ),
                SizedBox(width: Dimensions.width10,),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.soup_kitchen,),
                ),
                SizedBox(width: Dimensions.width10,),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.soup_kitchen,),
                ),
                SizedBox(width: Dimensions.width10,),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.soup_kitchen,),
                ),
                SizedBox(width: Dimensions.width10,),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.soup_kitchen,),
                ),
                SizedBox(width: Dimensions.width10,),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20/2),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.soup_kitchen,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
