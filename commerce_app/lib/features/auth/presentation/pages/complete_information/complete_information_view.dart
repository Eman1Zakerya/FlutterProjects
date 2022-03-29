import 'package:commerce_app/features/auth/presentation/pages/complete_information/widgets/complete_information_body.dart';
import 'package:flutter/material.dart';


class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : CompleteInformationBody(),
    );
  }
}