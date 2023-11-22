import 'package:flutter/material.dart';

class CardBlockItemWidget extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final TextStyle? style;
  const CardBlockItemWidget({
    super.key,
    required this.text,
    this.onTap,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(text, style: style),
        ),
        const Icon(
          Icons.navigate_next_rounded,
          color: Colors.grey,
        ),
      ],
    );
  }
}
