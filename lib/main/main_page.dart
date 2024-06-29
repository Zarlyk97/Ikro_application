import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/pages/lesson_page.dart';
import 'package:ikro_account_student1/main/home_page.dart';
import 'package:ikro_account_student1/presentation/pages/pages.dart';
import 'package:ikro_account_student1/video_lessons/pages/video_lesson1_page.dart';
import 'package:ikro_account_student1/video_lessons/pages/video_lesson_page.dart';
import 'package:svg_flutter/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            HomePage(),
            LessonPage(),
            VideoPage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Башкы бет',
            icon: SvgPicture.asset(
              "assets/icons/bx-home-alt.svg",
              // ignore: deprecated_member_use
              color: const Color(0xff236681),
              width: 25,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Тажвид',
            icon: SvgPicture.asset(
              "assets/icons/Vector.svg",
              // ignore: deprecated_member_use
              color: const Color(0xff236681),
              width: 25,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Рейтинг',
            icon: SvgPicture.asset(
              "assets/icons/Vector (1).svg",
              // ignore: deprecated_member_use
              color: const Color(0xff236681),
              width: 25,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Профиль',
            icon: SvgPicture.asset(
              "assets/icons/Vector (2).svg",
              // ignore: deprecated_member_use
              color: const Color(0xff236681),
              width: 25,
              height: 25,
            ),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff236681),
        onTap: _onTabTapped,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
