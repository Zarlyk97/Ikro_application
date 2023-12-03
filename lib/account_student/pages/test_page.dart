import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/widgets/eleveted_button.dart';
import 'package:ikro_account_student1/test_page/arabic_sound.dart';
import 'package:ikro_account_student1/test_page/card_page.dart';
import 'package:ikro_account_student1/test_page/find_a_couple.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final List<String> _images = [
    'assets/icons_exercise/pen.png',
    'assets/icons_exercise/microphone.png',
    'assets/icons_exercise/spreadsheet.png',
    'assets/icons_exercise/detail.png',
    'assets/icons_exercise/volume.png',
    'assets/icons_exercise/grid_vertical.png',
  ];
  final List<String> _texts = [
    'Жазуу',
    'Кайталоо',
    'Сөздөрдү',
    'Карточки',
    'Араб уну',
    'Жубун тап',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF236681),
        title: const Text(
          'Көнүгүү тандаңыз',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(26, 26, 26, 200),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 220,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 2),
                itemBuilder: (contex, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 5) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FindACouplePage()));
                      }
                      if (index == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ArabicSound()));
                      }
                      if (index == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CardPage()));
                      }
                    },
                    child: SizedBox(
                      width: 166,
                      height: 110,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF236681),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(_images[index]),
                            Text(
                              _texts[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevetedButtonWidget(
              onPressed: () {},
              text: 'Рейтинг',
            )
          ],
        ),
      ),
    );
  }
}
