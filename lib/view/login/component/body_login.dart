import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "../../../components/my_text_form_field.dart";
import "../../../components/my_text.dart";
import '../../../components/my_button.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _Body();
}

class _Body extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          top: false,
          right: false,
          left: false,
          bottom: false,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.height / 20,
                  ),
                ),
                Image(
                  image: const AssetImage("../assets/images/gambar.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  width: size.height / 2,
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  icon: const Icon(Icons.person),
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  icon: const Icon(Icons.lock),
                ),
                const MyText(
                    horizontal: 45,
                    vertical: 5,
                    myText: "Forgot Password? ",
                    link: "forgot_password"),
                const MyText(
                  horizontal: 45,
                  vertical: 5,
                  myText: "Sign up? ",
                  link: "sign_up",
                ),
                MyButton(
                  horizontal: 0,
                  vertical: 8,
                  textButton: "Submit",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) =>
                              Navigator.of(context).pushNamed("home"))
                          .onError((error, stackTrace) => {
                                // ignore: avoid_print
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(error.toString())))
                              });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Please fill Input")));
                    }
                  },
                )
              ],
            ),
          )),
    );
  }
}
