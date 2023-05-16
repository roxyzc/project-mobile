import "package:flutter/material.dart";
// import "package:firebase_auth/firebase_auth.dart";
import "../../../components/my_text_form_field.dart";
import '../../../components/my_button.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _Body();
}

class _Body extends State<ForgotPasswordBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Change Password",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
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
                Image(
                  image: const AssetImage("../assets/images/gambar.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.height / 2,
                ),
                const SizedBox(
                  height: 20,
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
                  controller: newPasswordController,
                  hintText: "New Password",
                  obscureText: false,
                  icon: const Icon(Icons.email),
                ),
                MyButton(
                  horizontal: 0,
                  vertical: 10,
                  textButton: "Submit",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Navigator.of(context).pushNamed("main");
                      // debugPrint(emailController.text);
                      // FirebaseAuth.instance
                      //     .sendPasswordResetEmail(email: emailController.text);

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Feature not yet available")));
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
