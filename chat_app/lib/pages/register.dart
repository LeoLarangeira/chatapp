import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:chat_app/methods/login.dart';
import 'package:chat_app/methods/register.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

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
            "Let's create an account for you",
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
            height: 25,
          ),
          MyTextfield(
            hintName: 'confirm password',
            controller: confirmpasswordController,
            isObscure: true,
          ),
          const SizedBox(
            height: 25,
          ),
          //login button
          const MyButton(
            buttonName: 'Register',
            onTap: Register,
          ),
        ],
      ),
    );
  }
}
