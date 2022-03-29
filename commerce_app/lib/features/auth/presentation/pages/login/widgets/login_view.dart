import 'package:commerce_app/features/auth/presentation/pages/login/widgets/login_view_body.dart';
import 'package:flutter/material.dart';


class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  LoginViewBody(),
    );
  }
}