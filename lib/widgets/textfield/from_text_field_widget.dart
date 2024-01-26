import 'package:flutter/material.dart';

class FromTextField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final String label;

  FromTextField({
    super.key,
    required controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: DateTime.now().toString().split(" ")[0],
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
