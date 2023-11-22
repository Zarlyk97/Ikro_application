import 'package:flutter/material.dart';
import 'package:ikro_account_student1/presentation/widgets/widget.dart';

class SendReviewPage extends StatelessWidget {
  const SendReviewPage({super.key});

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
          'Отправить отзыв',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Тема отзыва',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Divider(),
              const TextFormWidget(
                hintText: 'В ссылка приложении автомати-и написано:',
              ),
              const TextFormWidget(
                hintText: 'Text:',
                suffixIcon: Icon(
                  Icons.cancel,
                  size: 17,
                  color: Colors.grey,
                ),
              ),
              const TextFormWidget(
                hintText: 'От почта отправителя:',
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: CustomButtonWidget(
                  onTap: () {},
                  text: 'Отправить',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  color: const Color(0xff22647E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
