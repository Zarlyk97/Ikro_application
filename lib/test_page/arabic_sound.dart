import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ikro_account_student1/account_student/widgets/progress_widget.dart';
import 'package:ikro_account_student1/account_student/widgets/volume_widget.dart';
import 'package:svg_flutter/svg.dart';

class ArabicSound extends StatefulWidget {
  const ArabicSound({super.key});

  @override
  State<ArabicSound> createState() => _ArabicSoundState();
}

class _ArabicSoundState extends State<ArabicSound> {
  List<String> words = ['مرحبًا', 'صباح', 'القرآن'];
  int correctCount = 0;
  int wrongCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF236681),
        title: const Text(
          'Араб үнү',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Сынак',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const LinearProgressIndicator(
              value: 100,
              color: Color(0xFF236681),
            ),
            const SizedBox(
              height: 10,
            ),
            ProgressWidget(
              correctCount: correctCount,
              wrongCount: wrongCount,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                VolumeWidget(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/icons/volumeLittle.svg',
                    ),
                  ),
                ),
                const Gap(20),
                VolumeWidget(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      'assets/icons/Turtle.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
            const Gap(94),
            Image.asset('assets/icons/Frame01.png'),
            const Gap(80),
            Expanded(
              child: ListView.builder(
                itemCount: words.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFF236681),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        words[index],
                        style: const TextStyle(
                          color: Color(0xFF236681),
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
