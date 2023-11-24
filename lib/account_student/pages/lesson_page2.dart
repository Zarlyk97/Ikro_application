import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/pages/letters_page.dart';

class LessonPage2 extends StatelessWidget {
  const LessonPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
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
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            for (int i = 1; i < 10; i++)
              Container(
                margin: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: const Color(0xFF236681),
                  leading: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Icon(
                      Icons.border_color_outlined,
                      size: 15,
                      color: Color(0xFF236681),
                    ),
                  ),
                  title: const Text(
                    "Киришүү сабагы",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    'Араб тамгалары',
                    style: TextStyle(
                      color: Color(0x99EBEBF5),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xffC7C7CC),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LettersPage(),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
