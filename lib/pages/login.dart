import 'package:chatify/main.dart';
import 'package:chatify/pages/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void onLoginPressed(){
    
  }

  void onRegisterPressed(context){
    debugPrint("Redirecting to register page!");
    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  
                  const Icon(
                    Icons.chat,
                    size: 96,
                  ),
                  const Text(
                    "chatify!",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Your email:',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Your password:',
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      fixedSize: MaterialStateProperty.all(Size(140, 50))
                    ),
                    onPressed: onLoginPressed,
                    child: const Text(
                      "Log in!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Don't have an account? "
                        ),
                        TextSpan(
                          text: "Register now!",
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                              onRegisterPressed(context);
                            } 
                        )
                      ]
                    )
                  )
                  
                ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}