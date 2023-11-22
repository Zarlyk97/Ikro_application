// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget({
    Key? key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.maxLines = 1,
    this.isReadOnly = false,
    this.validator,
    this.suffixIcon,
    required this.obscureText,
  }) : super(key: key);

  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? isReadOnly;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      readOnly: isReadOnly!,
      enabled: !isReadOnly!,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xFFD9D9D9)),
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          vertical: maxLines! > 1 ? 12 : 4,
          horizontal: 12,
        ),
      ),
    );
  }
}
