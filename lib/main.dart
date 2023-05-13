import 'package:flutter/material.dart';
import "package:project_login/view/forgotPassword/forgot_password.dart";
import "package:project_login/view/login/login.dart";
import 'package:project_login/view/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter demo",
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 124, 171, 228),
          scaffoldBackgroundColor: const Color.fromARGB(255, 74, 130, 199),
        ),
        home: const LoginPage(),
        routes: <String, WidgetBuilder>{
          "forgot_password": (BuildContext context) =>
              const ForgotPasswordPage(),
          "sign_up": (BuildContext context) => const SignUpPage()
        });
  }
}
