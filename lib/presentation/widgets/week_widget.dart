import 'package:flutter/material.dart';

class Week_Widget extends StatelessWidget {
  const Week_Widget({
    super.key,
    required this.text,
    required this.color,
    required this.colors,
    this.onTap,
  });
  final String text;
  final Color color;
  final Color colors;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 41,
        height: 41,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(20),
          color: colors,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
