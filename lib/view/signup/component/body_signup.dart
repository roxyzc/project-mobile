import "package:firebase_auth/firebase_auth.dart";
// import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:project_login/view/home/home_page.dart";
import "../../../components/my_text_form_field.dart";
import '../../../components/my_button.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _Body();
}

class _Body extends State<SignUpBody> {
  final _formKey = GlobalKey<FormState>();
  // TextEditingController usernameController = TextEditingController();
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
          top: false,
          right: false,
          left: false,
          bottom: false,
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
                  horizontal: 0,
                  vertical: 10,
                  textButton: "Submit",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage())))
                          .onError((error, stackTrace) =>
                              // ignore: avoid_print
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(error.toString()))));
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
