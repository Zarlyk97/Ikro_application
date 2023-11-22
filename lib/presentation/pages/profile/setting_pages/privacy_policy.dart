import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
          'Политика конфиденциальности',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 31, right: 32, top: 37),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'политика конфиденциальности',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 18),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut lectus luctus, tristique arcu eu, pellentesque erat. Nulla facilisi. Duis sagittis mattis fermentum. Vestibulum ipsum odio, molestie vel condimentum eget, tempus vel tellus. Cras vel mattis lectus. Maecenas ac metus sed lectus laoreet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque in leo sed metus molestie molestie ac sed mi. Donec id ipsum id quam congue consectetur. Ut tortor elit, dapibus nec massa at, mollis lobortis felis. Aenean vitae turpis et purus dictum sollicitudin a a felisClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque in leo sed metus molestie molestie ac sed mi. Donec id ipsum id quam congue consectetur. Ut tortor elit, dapibus nec massa at, mollis lobortis felis. Aenean vitae turpis et purus dictum sollicitudin a a felis',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
