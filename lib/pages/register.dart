import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/components/custom_textField.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget{

  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  
  void register() async{
    final _authService = AuthService();

    if(passController.text == confirmPassController.text) {
      try{
        await _authService.signUpWithEmailPassword(emailController.text, passController.text);
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
    else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.surface,
            title: Text('Passwords don\'t match'),
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
            Icon(Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text('Let\'s create an account for you!!',
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
            MyTextField(
                controller: confirmPassController,
                hintText: 'Confirm Password',
                obsecureText: true
            ),
            const SizedBox(height: 25),
            MyButton(
                text: 'Sign Up',
                onTap: register
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login now',
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