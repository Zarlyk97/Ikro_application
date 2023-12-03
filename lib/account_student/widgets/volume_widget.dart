import 'package:flutter/material.dart';

class VolumeWidget extends StatelessWidget {
  const VolumeWidget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF236681),
      ),
      child: child,
    );
  }
}
