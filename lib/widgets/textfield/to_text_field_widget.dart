import 'package:flutter/material.dart';

class ToTextField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final String label;
  String hintText = "";

  ToTextField({
    super.key,
    required controller,
    required this.label,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
