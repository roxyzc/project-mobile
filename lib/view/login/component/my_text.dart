import "package:flutter/material.dart";

class MyText extends StatelessWidget {
  final double horizontal;
  final double vertical;
  final String myText;

  const MyText({
    super.key,
    required this.horizontal,
    required this.vertical,
    required this.myText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            myText,
            style: const TextStyle(color: Colors.white30),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("forgot_password");
            },
            child: const Text(
              "Klik here",
              style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
        ],
      ),
    );
  }
}
