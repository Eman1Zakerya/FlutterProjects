import 'package:commerce_app/features/on_Boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({ Key? key,@required this.pageController }) : super(key: key);
   final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: 'E shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          title: 'E shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: 'E shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
      ],
    );
  }
}