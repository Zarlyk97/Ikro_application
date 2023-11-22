import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/pages/pages.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';

class NatificationPage extends StatefulWidget {
  const NatificationPage({super.key});

  @override
  State<NatificationPage> createState() => _NatificationPageState();
}

class _NatificationPageState extends State<NatificationPage> {
  bool hidepass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff236681),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Уведомления',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 62, right: 32, left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardBlockItemWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationReminder(),
                  ),
                );
              },
              text: 'Напоминание',
              style: const TextStyle(
                color: Color(0xFF236681),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Ежедневные напоминания о уроках',
              style: TextStyle(
                color: Color(0x993C3C43),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(),
            const SizedBox(
              height: 24,
            ),
            CardBlockItemWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationRating(),
                  ),
                );
              },
              text: 'Рейтинги',
              style: const TextStyle(
                color: Color(0xFF236681),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Место в лиге',
              style: TextStyle(
                color: Color(0x993C3C43),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(),
            const SizedBox(
              height: 24,
            ),
            CardBlockItemWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingAlertsPage(),
                  ),
                );
              },
              text: 'Оповещения',
              style: const TextStyle(
                color: Color(0xFF236681),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Оповещения о новых функциях',
              style: TextStyle(
                color: Color(0x993C3C43),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class SettingAlertsPage extends StatefulWidget {
  const SettingAlertsPage({super.key});

  @override
  State<SettingAlertsPage> createState() => _SettingAlertsPageState();
}

class _SettingAlertsPageState extends State<SettingAlertsPage> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F7),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff236681),
        title: const Text(
          'Оповещения',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(left: 30, top: 21),
                child: Text(
                  'Обновления Ikro и советы по учебе  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Center(
              child: Container(
                height: 46,
                width: 361,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Обновления',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      CupertinoSwitch(
                        value: switchValue,
                        activeColor: Colors.green,
                        onChanged: (bool? value) {
                          setState(() {
                            switchValue = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(width: double.infinity, color: Colors.white, height: 480)
          ],
        ),
      ),
    );
  }
}
