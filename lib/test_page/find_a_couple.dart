import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/widgets/progress_widget.dart';

class FindACouplePage extends StatefulWidget {
  const FindACouplePage({super.key});

  @override
  State<FindACouplePage> createState() => _FindACouplePageState();
}

class _FindACouplePageState extends State<FindACouplePage> {
  final List<String> wordList1 = [
    'مرحبًا',
    'القرآن',
    'مرحبًا',
    'القرآن',
    'مرحبًا',
  ];
  final List<String> wordList2 = [
    'мерхаба',
    'куран',
    'мерхаба',
    'куран',
    'мерхаба',
  ];
  int correctCount = 0;
  int wrongCount = 0;
  List<bool> matches = [];
  @override
  void initState() {
    matches = List.filled(wordList1.length, true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
            bottom: 39,
          ),
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
              Row(
                children: [
                  Column(
                    children: wordList1.map((word) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            checkMatch(0);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 80,
                          width: 166,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF236681),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: matches[0] ? Colors.green : Colors.red),
                          child: Center(
                              child: Text(
                            word,
                            style: const TextStyle(
                              color: Color(0xFF236681),
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: wordList2.map((word) {
                      return GestureDetector(
                        onTap: () {
                          checkMatch(1);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 80,
                          width: 166,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF236681),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: matches[1] ? Colors.green : Colors.red),
                          child: Center(
                              child: Text(
                            word,
                            style: const TextStyle(
                              color: Color(0xFF236681),
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkMatch(int index) {
    bool isCorrect = wordList1[index] == wordList2[index];
    if (isCorrect) {
      correctCount++;
      matches[index] = true;
    } else {
      wrongCount++;
    }
    setState(() {
      matches[index] = isCorrect;
    });
  }
}
