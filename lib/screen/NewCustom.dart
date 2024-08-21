import 'package:flutter/material.dart';

class Newcustom extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Color borderColor;
  final Color labelColor;

  const Newcustom({
    required this.controller,
    required this.labelText,
    this.borderColor = Colors.blue, // Default border color
    this.labelColor = Colors.white, // Default label color
    Key? key, required Null Function(dynamic value) onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 2.0), // Custom border color and width
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor), // Custom label color
      ),
      style: TextStyle(color: Colors.white), // Text color
    );
  }
}
