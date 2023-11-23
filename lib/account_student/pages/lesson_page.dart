import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF236681),
        title: const Text(
          'Сабак',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                //<-- SEE HERE

                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: const Color(0xFF236681),
              leading: SvgPicture.asset(
                'assets/icons/Lesson_icon.svg',
              ),
              title: Text('1-Модуль'),
              subtitle: Text('Куран алиппеси'),
            )
          ],
        ),
      ),
    );
  }
}
