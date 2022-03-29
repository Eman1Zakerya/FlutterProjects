import 'package:commerce_app/core/constants.dart';
import 'package:commerce_app/features/splash/presentation/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}