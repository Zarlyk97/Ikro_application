import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/pages/pages.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';

class SettingProfilePage extends StatefulWidget {
  const SettingProfilePage({super.key});

  @override
  State<SettingProfilePage> createState() => _SettingProfilePageState();
}

class _SettingProfilePageState extends State<SettingProfilePage> {
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
          'Профиль',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 16, left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChangeAvatar()));
                        },
                        child: Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.white),
                          child: Image.asset('assets/icons/Group1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Колдонуучунун аты'),
              const SizedBox(
                height: 6,
              ),
              const CustomInputWidget(
                hintText: 'Дамира',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Электрондук почта'),
              const SizedBox(
                height: 6,
              ),
              const CustomInputWidget(
                hintText: 'damira@gmail.com',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Телефон номуру'),
              const SizedBox(
                height: 6,
              ),
              const CustomInputWidget(
                hintText: '+996 550 550 550',
                keyboardType: TextInputType.phone,
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Пароль'),
              const SizedBox(
                height: 6,
              ),
              CustomInputWidget(
                hintText: '********',
                suffixIcon: IconButton(
                    onPressed: () {
                      hidepass = !hidepass;
                      setState(() {});
                    },
                    icon: Icon(hidepass
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined)),
                obscureText: hidepass,
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomButtonWidget(
                color: Color(0xff236681),
                text: 'Сохранить',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomButtonWidget(
                color: Color(0xffD70015),
                text: 'Удалить аккаунт',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
