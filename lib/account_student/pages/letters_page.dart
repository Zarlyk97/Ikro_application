import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/pages/test_page.dart';
import 'package:ikro_account_student1/account_student/widgets/custom_widget.dart';
import 'package:svg_flutter/svg.dart';

class LettersPage extends StatefulWidget {
  const LettersPage({super.key});

  @override
  State<LettersPage> createState() => _LettersPageState();
}

class _LettersPageState extends State<LettersPage> {
  final List<String> _images = [
    'assets/letters/ا.svg',
    'assets/letters/ب.svg',
    'assets/letters/ت.svg',
    'assets/letters/ث.svg',
    'assets/letters/ج.svg',
    'assets/letters/ح.svg',
    'assets/letters/د.svg',
    'assets/letters/ذ.svg',
    'assets/letters/ر.svg',
    'assets/letters/ز.svg',
    'assets/letters/س.svg',
    'assets/letters/ش.svg',
    'assets/letters/_ ص .svg',
    'assets/letters/ض.svg',
    'assets/letters/ط .svg',
    'assets/letters/ظ.svg',
    'assets/letters/ع .svg',
    'assets/letters/غ.svg',
    'assets/letters/ف.svg',
    'assets/letters/ق.svg',
    'assets/letters/ك.svg',
    'assets/letters/ل.svg',
    'assets/letters/م.svg',
    'assets/letters/ن.svg',
    'assets/letters/ه.svg',
    'assets/letters/و.svg',
    'assets/letters/لا.svg',
    'assets/letters/ي.svg',
  ];
  List<bool> selected = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF236681),
        title: const Text(
          'Тамгалар',
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
                'эреже',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: Column(
            children: [
              const CustomWidget(
                text: 'Алфавиттер',
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _images.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100),
                itemBuilder: (contex, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected[index] = !selected[index];
                      });
                    },
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          side: BorderSide(color: const Color(0xFF236681))),
                      color: selected[index]
                          ? const Color(0xFF236681)
                          : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(_images[index]),
                          Text(
                            'ffm',
                            style: TextStyle(
                              color: selected[index]
                                  ? Colors.white
                                  : const Color(0xFF236681),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TextPage()));
                },
                child: Container(
                  width: 350,
                  height: 56,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black),
                  child: const Center(
                    child: Text(
                      'тест',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                      showDragHandle: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      builder: (BuildContext context) {
                        return SizedBox(
                            height: 290,
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 14),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('    '),
                                      const Text(
                                        'Эреже',
                                        style: TextStyle(
                                          color: Color(0xFFFF3B30),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0x14747480),
                                          ),
                                          child: const Center(
                                              child: Icon(Icons.clear)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    ' Жалпысынан тамгалар  жоон жана ичке болуп экиге бөлүнөт. Кээ бир тамгаларды кырызча туюнтууга мүмкүн болбогондуктан, мугалимдин оозунан гана угуп үйрөнө алабыз. Кара түстөгү тамгалар ичке  кызыл түстөгү тамгалар жоон ал эми жашыл тустогу(лам ) менен (ро) тамгалары кээде жоон кээде ичке окулат.  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      },
                      context: context);
                },
                child: Container(
                  width: 36,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: const Color(0x4C3C3C43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
