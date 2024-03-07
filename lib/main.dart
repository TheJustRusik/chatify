import 'package:flutter/material.dart';
import 'package:chatify/services/authorization.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: const AuthorizationService(),
      theme: ThemeData.light(),
    );
  }
}