import "package:flutter/material.dart";
import "my_text_form_field.dart";
import "my_text.dart";
import 'my_button.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _Body();
}

class _Body extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: size.height,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                const Image(
                  image: AssetImage("../assets/images/gambar.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                MyTextField(
                    horizontal: 20,
                    vertical: 10,
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false),
                MyTextField(
                    horizontal: 20,
                    vertical: 10,
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true),
                const MyText(
                    horizontal: 20, vertical: 5, myText: "Forgot Password? "),
                const MyText(horizontal: 20, vertical: 5, myText: "Sign up"),
                MyButton(
                    horizontal: 0,
                    vertical: 8,
                    myKey: _formKey,
                    textButton: "Submit",
                    text: "Please fill input")
              ],
            ),
          )),
    );
  }
}
