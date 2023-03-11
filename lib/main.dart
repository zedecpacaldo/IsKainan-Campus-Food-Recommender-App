import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:iskainan/controllers/vendor_controller.dart';
import 'package:iskainan/pages/Home/main_page.dart';
import 'package:iskainan/pages/splash/splash_page.dart';
import 'package:iskainan/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDisplayMode.setHighRefreshRate();
  await Future.delayed(Duration(milliseconds: 1000));
  await dep.init();

  runApp(Home());
}


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorController>(builder: (_){
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IsKainan: Campus Food App',

        // home: SplashScreen(),
        initialRoute: RouteHelper.getSplashPage(),
        getPages: RouteHelper.routes,
      );
    });
  }
}
