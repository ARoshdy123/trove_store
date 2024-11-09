import 'package:flutter/material.dart';

class TFormField extends StatelessWidget {
  const TFormField({
    super.key,
    required this.labelText,
    required this.fontSize,
    required this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  final String labelText;
  final double fontSize;
  final Icon prefixIcon;
  final Icon? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      expands: false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(fontSize: fontSize),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
