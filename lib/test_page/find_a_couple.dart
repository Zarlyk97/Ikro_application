import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/widgets/progress_widget.dart';

class FindACouplePage extends StatefulWidget {
  const FindACouplePage({super.key});

  @override
  State<FindACouplePage> createState() => _FindACouplePageState();
}

class _FindACouplePageState extends State<FindACouplePage> {
  List<Word> words = [
    Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'),
    Word(arabic: 'القرآن', kyrgyz: 'куран'),
    Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'),
    Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'),
    Word(arabic: 'القرآن', kyrgyz: 'куран'),
  ];

  int correctCount = 0;
  int wrongCount = 0;
  List<bool> matches = [];

  @override
  Widget build(BuildContext context) {
    var word = words[correctCount];

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF236681),
        title: const Text(
          'Жубун тап',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 39),
          child: Column(
            children: [
              const LinearProgressIndicator(
                  color: Color(0xFF236681),
                  value: 100 // correctCount / (correctCount + wrongCount),
                  ),
              const SizedBox(
                height: 10,
              ),
              ProgressWidget(
                  correctCount: correctCount, wrongCount: wrongCount),
              const SizedBox(
                height: 63,
              ),
              for (int i = 0; i < words.length; i++)
                Row(
                  children: [
                    wordsWidget(word.arabic, () {}),
                    wordsWidget(word.kyrgyz, () {})
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget wordsWidget(String text, void Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(7),
        height: 80,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF236681),
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF236681),
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Word {
  final String arabic;
  final String kyrgyz;

  Word({required this.arabic, required this.kyrgyz});
}
