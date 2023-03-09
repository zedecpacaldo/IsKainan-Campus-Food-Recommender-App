// allergies page **************************************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/route_helper.dart';
import '../../widgets/big_text.dart';
import '../../utils/colors.dart';

class AllergiesPage extends StatefulWidget {
  @override
  _AllergiesPageState createState() => _AllergiesPageState();
}

class _AllergiesPageState extends State<AllergiesPage> {
  List multipleSelected = [];
  List checkListItems = [
    {"id": 0, "value": false, "title": "Spicy",},
    {"id": 1, "value": false, "title": "Shellfish",},
    {"id": 2, "value": false, "title": "Peanuts",},
    {"id": 3, "value": false, "title": "Milk",},
    {"id": 4, "value": false, "title": "Fish",},
    {"id": 5, "value": false, "title": "Soy",}

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
        child: Column(

          children: [
            const SizedBox(height: 48),
            BigText(
              text: 'Any allergies/dislikes?',
            ),
            const SizedBox(height: 24),
            Column(

              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                checkListItems.length,
                    (index) => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: Text(
                    checkListItems[index]["title"],
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  value: checkListItems[index]["value"],
                  onChanged: (value) {
                    setState(() {
                      checkListItems[index]["value"] = value;
                      if (multipleSelected.contains(checkListItems[index])) {
                        multipleSelected.remove(checkListItems[index]);
                      } else {
                        multipleSelected.add(checkListItems[index]);
                      }
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteHelper.addressPage);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor),
                  child: const Icon(Icons.arrow_back),
                ),

                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteHelper.initial);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor),
                  child: const Icon(Icons.search),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// allergies page **************************************