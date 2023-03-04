import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Home/main_page.dart';

void main() {
  runApp(const Home());
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IsKainan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(),
    );
  }
}
