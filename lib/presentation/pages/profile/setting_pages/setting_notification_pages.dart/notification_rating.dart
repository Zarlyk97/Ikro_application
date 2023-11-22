import 'package:flutter/material.dart';

class NotificationRating extends StatefulWidget {
  const NotificationRating({super.key});

  @override
  State<NotificationRating> createState() => _NotificationRatingState();
}

class _NotificationRatingState extends State<NotificationRating> {
  int index = 1;
  int index1 = 400;

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
          'Рейтинг',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 23, right: 23),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/icons/Mask group 3 1.png'),
                  Positioned(
                    left: 43,
                    top: 85,
                    child: Image.asset('assets/icons/number.png'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(children: [
                    Image.asset('assets/icons/Mask group 3 1.png'),
                    Positioned(
                      left: 42,
                      top: 85,
                      child: Image.asset('assets/icons/number (1).png'),
                    ),
                  ]),
                  Stack(
                    children: [
                      Image.asset('assets/icons/Mask group 3 1.png'),
                      Positioned(
                        left: 42,
                        top: 85,
                        child: Image.asset('assets/icons/number (2).png'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              for (int i = 0; i < 20; i++)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${index++}",
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/icons/Mask group 3 1 (1).png'),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('Имя Фамилия'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "${index1++}",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.keyboard_arrow_up),
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
