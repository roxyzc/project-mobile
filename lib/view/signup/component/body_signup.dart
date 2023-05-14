import "package:flutter/material.dart";
import "../../../components/my_text_form_field.dart";
import '../../../components/my_button.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _Body();
}

class _Body extends State<SignUpBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          top: true,
          right: false,
          left: false,
          bottom: true,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 20),
                ),
                Image(
                  image: const AssetImage("../assets/images/gambar.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.height / 2,
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: emailController,
                  hintText: "Username",
                  obscureText: false,
                  icon: const Icon(Icons.person),
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  icon: const Icon(Icons.email),
                ),
                MyTextField(
                  horizontal: 40,
                  vertical: 10,
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  icon: const Icon(Icons.lock),
                ),
                MyButton(
                  controller: [
                    usernameController,
                    emailController,
                    passwordController
                  ],
                  horizontal: 0,
                  vertical: 8,
                  myKey: _formKey,
                  textButton: "Submit",
                  text: "Please fill input",
                  link: "home",
                )
              ],
            ),
          )),
    );
  }
}
