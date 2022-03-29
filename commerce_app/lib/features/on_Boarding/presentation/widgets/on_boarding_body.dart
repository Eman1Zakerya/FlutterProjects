import 'package:commerce_app/core/constants.dart';
import 'package:commerce_app/core/utils/size_config.dart';
import 'package:commerce_app/core/utils/widgets/custom_button.dart';
import 'package:commerce_app/features/auth/presentation/pages/login/widgets/login_view.dart';
import 'package:commerce_app/features/on_Boarding/presentation/widgets/custom_page_view.dart';
import 'package:commerce_app/features/splash/presentation/widgets/custom_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({ Key? key }) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController?pageController;
  @override
  void initState() {
   pageController=PageController(initialPage: 0)..addListener(() {
     setState(() {
       
     });
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
            bottom: SizeConfig.defaultSize! *28,
          child:CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page :0,
          )
        ),
        Visibility(
          visible:pageController!.hasClients ? (pageController?.page == 2 ?false :true):true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xff898989)
              ),
              textAlign: TextAlign.left,
              )
            ),
        ),
          Positioned(
            left: SizeConfig.defaultSize! *10,
            right: SizeConfig.defaultSize! *10,
            bottom: SizeConfig.defaultSize! *10,
            child:  CustomGeneralButton(
               onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => LoginView(), transition: Transition.rightToLeft , duration: Duration(milliseconds: 500));
                }
              },
              text:pageController!.hasClients ?( pageController?.page == 2 ? 'Get Started':'Next') :'Next' ,
              )),
      ],
    );
  }
}