import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final GlobalKey<FormState> myKey;
  final List<TextEditingController> controller;
  final double horizontal;
  final double vertical;
  final String textButton;
  final String text;
  final String link;

  const MyButton(
      {super.key,
      required this.controller,
      required this.myKey,
      required this.horizontal,
      required this.vertical,
      required this.textButton,
      required this.text,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: SizedBox(
        width: 120,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            if (myKey.currentState!.validate()) {
              // handle valid form state
              debugPrint(controller[0].text);
              Navigator.of(context).pushNamed(link);
            } else {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(text)));
            }
          },
          child: Text(textButton),
        ),
      ),
    );
  }
}
