import 'package:chatify/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void onLoginPressed(context){
    debugPrint("Redirecting to login page!");
    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  

  void onRegisterPressed(){

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
                    onPressed: () {},
                    child: const Text(
                      "Register!",
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
                          text: "Have an account? "
                        ),
                        TextSpan(
                          text: "Login now!",
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                              onLoginPressed(context);
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