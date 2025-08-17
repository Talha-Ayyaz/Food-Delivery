import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/components/custom_textField.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

class LoginPage extends StatefulWidget{

  final void Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap
});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void login() async{
    final _authService = AuthService();

    try{
      await _authService.signInWithEmailPassword(emailController.text, passController.text);
    }
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.surface,
            title: Text(e.toString()),
          )
      );
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Padding(
             padding: const EdgeInsets.only(left: 8.0),
             child: Lottie.asset('lib/animate/food.json',
               width: 150,
               height: 150,
               fit: BoxFit.contain,
             ),
           ),
            const SizedBox(height: 10),
            Text('Food Delivery App',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
                controller: emailController,
                hintText: 'Email',
                obsecureText: false
            ),
            const SizedBox(height: 25),
            MyTextField(
                controller: passController,
                hintText: 'Password',
                obsecureText: true
            ),
            const SizedBox(height: 25),
            MyButton(
                text: 'Sign In',
                onTap: login
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}