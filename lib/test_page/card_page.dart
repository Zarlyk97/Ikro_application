import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ikro_account_student1/account_student/widgets/progress_widget.dart';
import 'package:ikro_account_student1/account_student/widgets/volume_widget.dart';
import 'package:svg_flutter/svg.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final List<String> _images = [
    'assets/letters/ث.svg',
    'assets/letters/ت.svg',
    'assets/letters/ب.svg',
    'assets/letters/ا.svg',
    'assets/letters/ذ.svg',
    'assets/letters/د.svg',
    'assets/letters/ح.svg',
    'assets/letters/ج.svg',
    'assets/letters/ش.svg',
    'assets/letters/س.svg',
    'assets/letters/ز.svg',
    'assets/letters/ر.svg',
    'assets/letters/ظ.svg',
    'assets/letters/ط .svg',
    'assets/letters/ض.svg',
    'assets/letters/_ ص .svg',
    'assets/letters/ق.svg',
    'assets/letters/ف.svg',
    'assets/letters/غ.svg',
    'assets/letters/ع .svg',
    'assets/letters/ن.svg',
    'assets/letters/م.svg',
    'assets/letters/ل.svg',
    'assets/letters/ك.svg',
    'assets/letters/ي.svg',
    'assets/letters/لا.svg',
    'assets/letters/ه.svg',
    'assets/letters/و.svg',
  ];
  final int correctCount = 0;
  final int wrongCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF236681),
          title: const Text(
            'Карточка',
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
          padding: const EdgeInsets.all(20),
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
                    child: SvgPicture.asset(
                      'assets/icons/volumeLittle.svg',
                    ),
                  ),
                  const Gap(20),
                  VolumeWidget(
                    child: SvgPicture.asset(
                      'assets/icons/Turtle.svg',
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Expanded(
                child: GridView.builder(
                  //  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _images.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100),
                  itemBuilder: (contex, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          side: BorderSide(
                            color: const Color(0xFF236681),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              _images[index],

                              // ignore: deprecated_member_use
                              color: const Color(0xFF236681),
                            ),
                            const SizedBox(
                              height: 2,
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
        ));
  }
}
