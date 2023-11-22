import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/widgets/avatar_widget.dart';

class ChangeAvatar extends StatefulWidget {
  const ChangeAvatar({super.key});

  @override
  State<ChangeAvatar> createState() => _ChangeAvatarState();
}

class _ChangeAvatarState extends State<ChangeAvatar> {
  List<Color> color = [
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.red,
    const Color.fromARGB(255, 116, 183, 238),
    const Color.fromARGB(255, 5, 45, 77)
  ];
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              'готово  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
        title: const Text(
          'Изменит аватар',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 181,
            width: double.infinity,
            color: const Color(0xffF2F2F7),
            child: Center(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image.asset('assets/icons/Rectangle6.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const AvatarWidget(
            text: 'Мырза',
          ),
          const SizedBox(
            height: 21,
          ),
          const AvatarWidget(
            text: 'Айым',
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            width: 357,
            height: 99,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Row(
                    children: [
                      Text(
                        'фон',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    7,
                    (index) {
                      return Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color[index]),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
