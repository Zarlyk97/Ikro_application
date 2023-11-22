import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';

class NotificationReminder extends StatefulWidget {
  const NotificationReminder({super.key});

  @override
  State<NotificationReminder> createState() => _NotificationReminderState();
}

class _NotificationReminderState extends State<NotificationReminder> {
  int containersCount = 1;
  List<bool> selected = [false, false, false, false, false, false, false];
  List<String> week = [
    'ПН',
    'ВТ',
    'СР',
    'ЧТ',
    'ПТ',
    'СБ',
    'ВС',
  ];
  TimeOfDay _dateTime = TimeOfDay.now();
  int index = 1;
  int index1 = 400;
  bool switchValue = true;
  bool switchValue1 = true;

  bool switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F7),
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
          'Напоминание',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 57,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'ДОБАВИТЬ БУДИЛЬНИК',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containersCount++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            for (int i = 0; i < containersCount; i++)
              SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Время напоминания',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        final TimeOfDay? timeOfDay = await showTimePicker(
                            hourLabelText: '',
                            minuteLabelText: '',
                            helpText: '',
                            confirmText: 'Сохранить',
                            cancelText: 'Сбросить',
                            context: context,
                            initialTime: _dateTime,
                            initialEntryMode: TimePickerEntryMode.dial);
                        if (timeOfDay != null) {
                          setState(() {
                            _dateTime = timeOfDay;
                          });
                        }
                      },
                      child: Container(
                        width: 91,
                        height: 34,
                        decoration: BoxDecoration(
                            color: const Color(0x1E767680),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            '${_dateTime.hour}:${_dateTime.minute} AM',
                            style: const TextStyle(
                              color: Color(0xFF007AFF),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              width: double.infinity,
              height: 61,
              color: Colors.white,
              child: const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ДНИ НАПОМИНАНИЙ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 61,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(7, (index) {
                    return Week_Widget(
                        onTap: () {
                          setState(() {
                            selected[index] = !selected[index];
                          });
                        },
                        text: week[index],
                        color: selected[index]
                            ? Colors.white
                            : const Color(0xFF236681),
                        colors: selected[index]
                            ? const Color(0xFF236681)
                            : Colors.white);
                  }),
                ),
              ),
            ),
            Container(
              height: 15,
              color: Colors.white,
            ),
            const SizedBox(
              height: 18,
            ),
            Center(
              child: Container(
                width: 361,
                height: 132,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'За 15 мин до урока',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'За 30 мин до урока',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          CupertinoSwitch(
                            value: switchValue1,
                            activeColor: Colors.green,
                            onChanged: (bool? value) {
                              setState(() {
                                switchValue1 = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'В течение часа до урока',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          CupertinoSwitch(
                            value: switchValue2,
                            activeColor: Colors.green,
                            onChanged: (bool? value) {
                              setState(() {
                                switchValue2 = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 245,
            )
          ],
        ),
      ),
    );
  }
}
