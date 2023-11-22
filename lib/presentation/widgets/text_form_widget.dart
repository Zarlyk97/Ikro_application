import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    super.key,
    this.hintText,
    this.hintStyle,
    this.suffixIcon,
  });
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText, hintStyle: hintStyle, suffixIcon: suffixIcon),
    );
  }
}
