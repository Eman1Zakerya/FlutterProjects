

import 'package:commerce_app/core/utils/size_config.dart';
import 'package:commerce_app/core/utils/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({ Key? key ,this.image,this.subTitle,this.title}) : super(key: key);
   final String? title;
   final String? subTitle;
   final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! *20,
          child: Image.asset(image!)),
         const VerticalSpace(2.5),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
          ),
           const VerticalSpace(1),
          Text(
          subTitle!,
          style: TextStyle(
            
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Color(0xff78787c),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
          ),
      ],
    );
  }
}