import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 357,
      height: 134,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 13, right: 11),
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 57,
                    width: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.5),
                        image: const DecorationImage(
                            image: AssetImage('assets/icons/Image.png'))),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
