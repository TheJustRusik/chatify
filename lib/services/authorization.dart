import 'package:flutter/material.dart';

import 'package:chatify/pages/login.dart';
import 'package:chatify/pages/home.dart';

class AuthorizationService extends StatelessWidget{
  const AuthorizationService({super.key});

  bool isAuthorized(){
    return false;
  }

  @override
  Widget build(BuildContext context){
    if (isAuthorized()) {
      return const HomePage();
    } else {
      return const LoginPage();
    }
  }
}