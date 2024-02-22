import 'package:flutter/material.dart';

import 'package:chatify/pages/login.dart';
import 'package:chatify/pages/home.dart';

class AuthorizationService extends StatelessWidget{
  const AuthorizationService({super.key});

  bool isAuthorized(){
    return true;
  }

  @override
  Widget build(BuildContext context){
    if (isAuthorized()) {
      return HomePage();
    } else {
      return const LoginPage();
    }
  }
}