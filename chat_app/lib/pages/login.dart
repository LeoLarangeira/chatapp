import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:chat_app/methods/login.dart';
import 'package:chat_app/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // @override
  // void initState() {
  //   emailController;
  //   passwordController;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            height: 50,
          ),
          //welcome back message
          Text(
            "Welcome back! You've been missed!",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),
          const SizedBox(
            height: 25,
          ),
          // email textfield
          MyTextfield(
            hintName: 'e-mail',
            controller: emailController,
            isObscure: false,
          ),
          const SizedBox(
            height: 25,
          ),

          //password textfield
          MyTextfield(
            hintName: 'password',
            controller: passwordController,
            isObscure: true,
          ),
          const SizedBox(
            height: 16,
          ),
          //login button
          MyButton(
            buttonName: 'Login',
            onTap: Login(context, emailController.toString(),
                passwordController.toString()),
          ),
          const SizedBox(
            height: 16,
          ),
          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member? ',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 16),
              ),
              const SizedBox(
                width: 2,
              ),
              GestureDetector(
                child: Text(
                  ' Register Now.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
