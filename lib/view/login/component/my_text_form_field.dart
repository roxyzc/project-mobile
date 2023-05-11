import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  final double horizontal;
  final double vertical;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.horizontal,
      required this.vertical});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: hintText,
          fillColor: const Color.fromARGB(160, 255, 255, 255),
          filled: true,
          // errorStyle: const TextStyle(fontSize: 0)
        ),
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your ${hintText.toLowerCase()}";
          }
          return null;
        }, // validator
      ),
    );
  }
}
