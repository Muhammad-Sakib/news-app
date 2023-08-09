import 'package:flutter/material.dart';
import 'package:news_app/utils/global.dart';

import '../widgets/my_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              marginTop(.15),
              Image.asset(
                'assets/images/dhaka_live_black.png',
                width: widthSize(context, size: 0.5),
              ),
              marginTop(.07),
              myTextFormField(title: 'মোবাইল নম্বর', hint: '+৮৮০১৫০০০০-০০০০'),
              myTextFormField(title: 'পাসওয়ার্ড', hint: 'আপনার পাসওয়ার্ড দিন'),
              myFlatButton('লগইন করুন'),
              horizontalTextButton(
                  'পাসওয়ার্ড ভুলে গেছেন?', 'নতুন পাসওয়ার্ড দিন'),
              marginTop(.07),
              horizontalTextButton(
                  'অ্যাকাউন্ট না থাকলে?', 'নতুন অ্যাকাউন্ট করুন'),
            ],
          ),
        ),
      ),
    );
  }
}
