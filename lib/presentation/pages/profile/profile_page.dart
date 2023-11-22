// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/pages/pages.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';
import 'package:spline_chart/spline_chart.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff236681),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileSettingPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ))
        ],
        title: const Text(
          'Профиль',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset('assets/icons/Rectangle6.png'),
                  ),
                  Positioned(
                    top: 85,
                    left: 80,
                    child: InkWell(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChangeAvatar(),
                            ),
                          );
                        },
                        child: Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.white),
                            child: Image.asset('assets/icons/Group1.png')),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Дамира',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'ikro@domain.com | +9965000000',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                'Катталган күнү  2023 ж.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              CustomButton(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 22,
                    ),
                    Image.asset('assets/icons/Group.png'),
                    const SizedBox(
                      width: 13,
                    ),
                    const Text('Профиль маалыматы')
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomButton(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 22,
                    ),
                    Image.asset('assets/icons/Vector.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text('Статистика'),
                    const SizedBox(
                      width: 120,
                    ),
                    Image.asset('assets/icons/arrowshape.turn.up.right.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Stack(children: [
                Container(
                  width: 342,
                  height: 283,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Статистика'),
                        SizedBox(height: 50, child: Text("2ч 30м")),
                        SizedBox(height: 50, child: Text("3ч 0м")),
                        SizedBox(height: 50, child: Text("6ч 20м")),
                        SizedBox(height: 50, child: Text("9ч 59м")),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 60, child: Text("1 кун")),
                              SizedBox(width: 60, child: Text("1 жума")),
                              SizedBox(width: 60, child: Text("1 ай")),
                              SizedBox(width: 60, child: Text("3 ай")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// .
                Positioned(
                  top: 30,
                  left: 55,
                  child: Container(
                    color: Colors.white,
                    child: SplineChart(
                      strokeWidth: 0.1,
                      values: {0: 10, 15: 30, 65: 40, 44: 50, 80: 50, 100: 90},
                      verticalLineEnabled: true,
                      fillOpactiy: 0.4,
                      verticalLinePosition: 40.0,
                      verticalLineStrokeWidth: 1.0,
                      verticalLineColor: Colors.blue,
                      verticalLineText: "Ваш рейтинг",
                      drawCircles: true,
                      circleRadius: 4,
                      width: 280,
                      height: 230,
                      circleStrokeColor: Colors.black,
                      textColor: Colors.black,
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 21,
              )
            ],
          ),
        ),
      ),
    );
  }
}
