import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';

Login(
  BuildContext context,
  String email,
  String password,
) async {
  final authService = AuthService();

  try {
    await authService.signInWithEmailPassword(email, password);
  } catch (e) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(e.toString()),
            ));
  }
}
