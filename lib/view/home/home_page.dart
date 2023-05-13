import "package:flutter/material.dart";

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
                Text(
                  "Home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: size.height / 20),
                ),
              ])),
    );
  }
}
