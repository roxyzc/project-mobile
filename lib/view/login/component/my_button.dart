import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final GlobalKey<FormState> myKey;
  final double horizontal;
  final double vertical;
  final String textButton;
  final String text;

  const MyButton({
    super.key,
    required this.myKey,
    required this.horizontal,
    required this.vertical,
    required this.textButton,
    required this.text,
  });

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
