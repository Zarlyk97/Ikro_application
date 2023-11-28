import 'package:flutter/material.dart';

class FindACouplePage extends StatefulWidget {
  const FindACouplePage({super.key});

  @override
  State<FindACouplePage> createState() => _FindACouplePageState();
}

class _FindACouplePageState extends State<FindACouplePage> {
  List<Word> words = [];
  @override
  void initState() {
    super.initState();
    words.add(Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'));
    words.add(Word(arabic: 'شراء', kyrgyz: 'салах'));
    words.add(Word(arabic: 'القرآن', kyrgyz: 'куран'));
    words.add(Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'));
    words.add(Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'));
    words.add(Word(arabic: 'مرحبًا', kyrgyz: 'мерхаба'));
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
              ))
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
              value: 100,
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
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: words.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 220,
                    crossAxisSpacing: 20,
                    childAspectRatio: 3.5 / 2),
                itemBuilder: (contex, index) {
                  var word = words[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        side: BorderSide(
                          color: Color(0xFF236681),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            word.arabic,
                            style: const TextStyle(
                              color: Color(0xFF236681),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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

class Word {
  final String arabic;
  final String kyrgyz;

  Word({
    required this.arabic,
    required this.kyrgyz,
  });
}
