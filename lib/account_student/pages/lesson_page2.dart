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
              leading: SizedBox(
                  height: 20,
                  width: 20,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Icon(
                      Icons.border_color_outlined,
                      size: 15,
                      color: Color(0xFF236681),
                    ),
                  )),
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
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 10,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
