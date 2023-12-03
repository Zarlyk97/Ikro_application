import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/pages/lesson_page2.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF236681),
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
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: const Color(0xFF236681),
              leading: Image.asset(
                'assets/icons/Lesson_icon.png',
              ),
              title: Text(
                "${index++}-модуль",
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Куран алиппеси',
                style: TextStyle(
                  color: Color(0x99EBEBF5),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: const Icon(
                Icons.done,
                color: Color(0xffC7C7CC),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LessonPage2(),
                  ),
                );
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 16,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
