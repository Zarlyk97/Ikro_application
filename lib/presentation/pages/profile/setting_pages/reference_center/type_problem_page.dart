import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';

class TypeProblem extends StatefulWidget {
  const TypeProblem({super.key});

  @override
  State<TypeProblem> createState() => _TypeProblemState();
}

class _TypeProblemState extends State<TypeProblem> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              QuestionsWidget(
                text: 'Выберите один вариант',
                icon: (isVisible
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
                onTap: () {
                  setState(
                    () {
                      isVisible = !isVisible;
                    },
                  );
                },
              ),
              Visibility(
                visible: isVisible,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Пожаловаться',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Отчёт об ошибке Андроид',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Отчёт об ошибке ios',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Проблемы с покупкой ......',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Другая проблема',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Другая проблема',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
                    SizedBox(
                      height: 19,
                    ),
                    QuestionsWidget(
                      text: 'Другая проблема',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Divider(),
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
