
import 'package:flutter/material.dart';

class InvoiceTextField extends StatelessWidget {
  const InvoiceTextField({
    Key? key,
    required this.hintText,
    this.inputType = TextInputType.text,
  }) : super(key: key);
  final String hintText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(hintText: hintText, border: InputBorder.none),
    );
  }
}