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
                Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: size.height / 20),
                ),
                Image(
                  image: const AssetImage("../assets/images/gambar.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  width: size.height / 2,
                ),
                MyTextField(
                  horizontal: 20,
                  vertical: 10,
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false,
                  icon: const Icon(Icons.person),
                ),
                MyTextField(
                  horizontal: 20,
                  vertical: 10,
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  icon: const Icon(Icons.lock),
                ),
                const MyText(
                    horizontal: 25,
                    vertical: 5,
                    myText: "Forgot Password? ",
                    link: "forgot_password"),
                const MyText(
                  horizontal: 25,
                  vertical: 5,
                  myText: "Sign up? ",
                  link: "sign_up",
                ),
                MyButton(
                    controller: [usernameController, passwordController],
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
