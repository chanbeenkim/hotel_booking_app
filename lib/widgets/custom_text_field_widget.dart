import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final String hintText;
  final String label;

  CustomTextField({
    super.key,
    required controller,
    required this.hintText,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
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
