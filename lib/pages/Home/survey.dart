import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/route_helper.dart';
import '../../widgets/big_text.dart';
import '../../utils/colors.dart';

// choice page **************************************
class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigText(
              text: 'Which food are you looking for?',
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your preferences',
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(RouteHelper.initial);
                  },
                  child: const Text('Return',
                  style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteHelper.budgetPage);
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
// choice page **************************************






