import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  // final GlobalKey<FormState> myKey;
  // final List<TextEditingController> controller;
  final double horizontal;
  final double vertical;
  final String textButton;
  // final String text;
  // final String link;
  final Function onPressed;

  const MyButton(
      {super.key,
      // required this.controller,
      // required this.myKey,
      required this.horizontal,
      required this.vertical,
      required this.textButton,
      // required this.text,
      // required this.link
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.27,
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            onPressed();
          },
          child: Text(textButton),
        ),
      ),
    );
  }
}
