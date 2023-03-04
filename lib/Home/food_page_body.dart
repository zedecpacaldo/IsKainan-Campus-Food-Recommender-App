import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iskainan/widgets/big_text.dart';
import 'package:iskainan/widgets/icon_and_text_widget.dart';
import 'package:iskainan/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

// Eto yung featured portion sa baba ny search button

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
              itemCount: 5,                                                 // Ilang ididisplay sa relevant food
              itemBuilder: (context, position){
            return _buildPageItem(position);
          }),
        ),
        new DotsIndicator(                                                              // Page Dots animation
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.iconColor1,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
  Widget _buildPageItem(int index){                                     // Use stack para mapatong patong ang pics
    Matrix4 matrix = new Matrix4.identity();                            // Math for sliding animation, DO NOT TOUCH PLS
    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index == _currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(                                                      // Food pics
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/food2.jpg'),
                  )
              )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(                                             // Food details
                height: Dimensions.pageViewTextContainer,
                margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                    boxShadow: [                                                              // Drop Shadow
                      BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0)
                      ),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 0)
                      )
                    ]
                ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Buttered Chicken"),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,))
                        ),
                        SizedBox(width: Dimensions.width10,),
                        SmallText(text: "4.5"),
                        SizedBox(width: Dimensions.width10,),
                        SmallText(text: "Frieday, Area 2"),
                      ],
                    ),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(icon: Icons.circle_sharp, text: "Normal", iconColor: AppColors.iconColor1,),
                        IconAndTextWidget(icon: Icons.location_on, text: "560 m", iconColor: AppColors.mainColor,),
                        IconAndTextWidget(icon: Icons.access_time_rounded, text: "8 min", iconColor: AppColors.mainColor),
                      ],
                    ),
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
