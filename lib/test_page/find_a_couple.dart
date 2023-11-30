import 'package:flutter/material.dart';

class FindACouplePage extends StatefulWidget {
  const FindACouplePage({super.key});

  @override
  State<FindACouplePage> createState() => _FindACouplePageState();
}

class _FindACouplePageState extends State<FindACouplePage> {
  List<String> wordList1 = [
    'مرحبًا',
    'القرآن',
    'مرحبًا',
    'القرآن',
    'مرحبًا',
  ];
  List<String> wordList2 = [
    'мерхаба',
    'куран',
    'мерхаба',
    'куран',
    'мерхаба',
  ];
  int correctCount = 0;
  int wrongCount = 0;
  int currentIndex = 0;
  int selectedIndex = 0;
  List<Color> colors = [Colors.white, Colors.white, Colors.white];

  @override
  Widget build(BuildContext context) {
    //   List<bool> isCorrect = List.filled(words.length, false);
    //    int correct = isCorrect.where((element) => element).length;
    //  int wrong = isCorrect.where((element) =>! element).length;
    //  double progress  = correct/ words.length;
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
      body: Padding(
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

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      size: 16,
                      color: Colors.green,
                    ),
                    Text(':5'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.clear,
                      size: 16,
                      color: Colors.red,
                    ),
                    Text(':5'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 24,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 24,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 24,
                      color: Colors.red,
                    ),
                  ],
                ),
                Icon(
                  Icons.feedback_outlined,
                  color: Color(0xFF236681),
                  size: 22,
                )
              ],
            ),
            const SizedBox(
              height: 63,
            ),
            for (int i = 0; i < wordList2.length; i++)
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      selectWord(i);
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
                          color: colors[selectedIndex = 0]),
                      child: Center(
                          child: Text(
                        wordList1[i],
                        style: const TextStyle(
                          color: Color(0xFF236681),
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      selectWord(i);
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
                          color: colors[selectedIndex = 1]),
                      child: Center(
                          child: Text(
                        wordList2[i],
                        style: const TextStyle(
                          color: Color(0xFF236681),
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                    ),
                  ),
                ],
              )
            // Expanded(
            //   child: GridView.builder(
            //     physics: const NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: words.length,
            //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //       maxCrossAxisExtent: 220,
            //       crossAxisSpacing: 20,
            //       childAspectRatio: 3.5 / 2,
            //     ),
            //     itemBuilder: (contex, index) {
            //       return GestureDetector(
            //         onTap: () {},
            //         child: Card(
            //           color: Colors.white,
            //           shape: const RoundedRectangleBorder(
            //             borderRadius: BorderRadius.all(
            //               Radius.circular(10),
            //             ),
            //             side: BorderSide(
            //               color: Color(0xFF236681),
            //             ),
            //           ),
            //           margin: const EdgeInsets.symmetric(vertical: 10),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(
            //                 words[index],
            //                 style: const TextStyle(
            //                   color: Color(0xFF236681),
            //                   fontSize: 17,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void selectWord(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (wordList1[selectedIndex] == wordList2[selectedIndex]) {
      colors[index] = Colors.green;
      correctCount++;
      selectedIndex++;
      if (selectedIndex == wordList1.length) {}
    } else {
      colors[selectedIndex] = Colors.red;
      wrongCount++;
    }
  }

  void checkAnswer(int userchoiceIndex) {
    if (wordList1[currentIndex] == wordList2[userchoiceIndex]) {
      setState(() {
        correctCount++;
        currentIndex++;
      });
    } else {
      setState(() {
        wrongCount++;
      });
    }
  }
}
