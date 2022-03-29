import 'package:commerce_app/core/utils/size_config.dart';
import 'package:commerce_app/features/on_Boarding/presentation/on_Boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({ Key? key }) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState(){
    super.initState();
    animationController= AnimationController(vsync: this,duration: const Duration(milliseconds: 600));
    fadingAnimation =Tween<double>(begin: 0.2,end: 1).animate(animationController!);
      
   
    animationController?.repeat(reverse: true);

     goToNextView();
  }
  @override
  void dispose(){
    animationController?.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
     child: Column(
     
       children:  [
         const Spacer(flex: 2,),
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Text('Fruit Market',
             style: TextStyle(
                   fontFamily: 'Poppins',
                   fontSize: 51,
                   fontWeight: FontWeight.bold,
                   color: Color(0xffffffff),
                 ),
            ),
            ),
        const Spacer(),
       Image.asset('assets/images/splash_view_image.png') , 
     

      ],)
    );
  }
  void goToNextView(){
    
    Future.delayed(Duration(seconds: 3),() {
      Get.to(()=>const OnBoardingView(),transition: Transition.fade);
      
    });
  }
}