// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({
    super.key,
    required this.correctCount,
    required this.wrongCount,
  });

  final int correctCount;
  final int wrongCount;

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.done,
              size: 16,
              color: Colors.green,
            ),
            Text(':${widget.correctCount}'),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.clear,
              size: 16,
              color: Colors.red,
            ),
            Text(':${widget.wrongCount}'),
          ],
        ),
        const Row(
          children: [
            Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: Colors.grey,
            ),
            Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: Colors.red,
            ),
            Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: Colors.red,
            ),
          ],
        ),
        const Icon(
          Icons.feedback_outlined,
          color: Color(0xFF236681),
          size: 22,
        )
      ],
    );
  }
}
