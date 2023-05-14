import "package:flutter/material.dart";
import 'component/body_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginBody());
  }
}
