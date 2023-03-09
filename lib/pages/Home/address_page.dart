// address page **************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/route_helper.dart';
import '../../widgets/big_text.dart';
import '../../utils/colors.dart';
class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigText(
              text: 'Where are you located?',
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your location',
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteHelper.budgetPage);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor),
                  child: const Icon(Icons.arrow_back),
                ),

                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteHelper.allergiesPage);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor),
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// address page **************************************