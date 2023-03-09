// vendor page **************************************
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/big_text.dart';
import '../../utils/colors.dart';

class VendorLoginPage extends StatelessWidget {
  const VendorLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigText(
              text: "Vendor Login Page",
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
// vendor page **************************************