import 'package:flutter/material.dart';

import 'Login.dart';
import 'Register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return isLogin ? Login() : Register();
  }

  void toggle() {
    setState(() {
      isLogin = !isLogin;
    });
  }
}
