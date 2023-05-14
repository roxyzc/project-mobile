import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:project_login/view/login/login.dart";

import "../../components/my_button.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(
                  horizontal: 0,
                  vertical: 8,
                  textButton: "logout",
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) => {
                          // ignore: avoid_print
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()))
                        });
                  },
                )
              ])),
    );
  }
}
