import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_login/view/forgotPassword/forgot_password.dart';
import 'package:project_login/view/login/login.dart';
import 'package:project_login/view/signup/sign_up.dart';
import 'package:project_login/view/home/home_page.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter demo",
        // theme: ThemeData(
        //   primaryColor: const Color.fromARGB(255, 124, 171, 228),
        //   scaffoldBackgroundColor: const Color.fromARGB(255, 74, 130, 199),
        // ),
        home: const LoginPage(),
        routes: <String, WidgetBuilder>{
          "forgot_password": (BuildContext context) =>
              const ForgotPasswordPage(),
          "sign_up": (BuildContext context) => const SignUpPage(),
          "home": (BuildContext context) => const HomePage(),
          "main": ((context) => const LoginPage())
        });
  }
}
