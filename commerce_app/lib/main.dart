import 'package:commerce_app/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}


