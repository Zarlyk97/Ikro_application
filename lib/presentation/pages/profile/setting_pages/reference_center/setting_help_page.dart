import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/pages/pages.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';

class SettingHelpPage extends StatelessWidget {
  const SettingHelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Помощь',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Часто задаваемые вопросы',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 61,
                ),
                const Text(
                  'Об использовании ИКРО',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Часто задаваемые вопросы?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Часто задаваемые вопросы?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Часто задаваемые вопросы?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 46,
                ),
//Управление аккаунтом
                ////// ////////////////////////////////////////////////
                const Text(
                  'Управление аккаунтом',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Как менять имя пользователя или эл.почту?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Как сбросить прогресс или удалить курс?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Я не могу войти в свой аккаунт?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Я не могу удалить свой аккаунт?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 46,
                ),
                //Подписка и оплата
                /////////////////////////////////////////////////////////////////
                const Text(
                  'Подписка и оплата',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Как оформить подписку?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Как отменить подписку?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Как запросить возврат средств?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 19,
                ),
                const QuestionsWidget(
                  icon: (Icons.keyboard_arrow_down),
                  text: 'Что такое Икро?',
                ),
                const SizedBox(
                  height: 19,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 46,
                ),
                const Text(
                  'Все ещё остались вопросы?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomButtonWidget(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingReportAnError(),
                        ),
                      );
                    },
                    text: 'Отчет об ошибке',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                    color: const Color(0xff22647E),
                  ),
                ),
                const SizedBox(
                  height: 41,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
