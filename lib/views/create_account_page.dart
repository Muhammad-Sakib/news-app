import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/my_widgets.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const height = mediaQ
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              marginTop(.1),
              Image.asset(
                'assets/images/dhaka_live_black.png',
                width: Get.width * 0.5,
              ),
              marginTop(.05),
              myTextFormField(title: 'আপনার নাম', hint: 'আপনার নাম লিখুন'),
              myTextFormField(title: 'মোবাইল নম্বর', hint: '+৮৮০১৫০০০০-০০০০'),
              myTextFormField(title: 'পাসওয়ার্ড', hint: 'আপনার পাসওয়ার্ড দিন'),
              myTextFormField(
                  title: 'কনফার্ম পাসওয়ার্ড',
                  hint: 'আপনার পাসওয়ার্ড কনফার্ম করুন'),
              myFlatButton('অ্যাকাউন্ট করুন'),
              marginTop(.03),
              myText(
                'অথবা',
              ),
              marginTop(.01),
              myFlatButtonWithImage('গুগল দিয়ে লগইন করুন',
                  imageSrc: 'assets/images/google.png'),
              myFlatButtonWithImage('ফেসবুক দিয়ে লগইন করুন',
                  imageSrc: 'assets/images/facebook.png'),
              horizontalTextButton('অ্যাকাউন্ট আছে?', 'লগইন করুন'),
            ],
          ),
        ),
      ),
    );
  }
}
