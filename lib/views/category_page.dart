import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/my_widgets.dart';

import '../utils/global.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});
  bool isNotificationOn = false;
  List<String> categories = [
    'জাতীয়',
    'আন্তর্জাতিক',
    'অর্থ বানিজ্য',
    'খেলাধুলা',
    'তথ্য ও প্রযুক্তি',
    'শিক্ষা',
    'লাইফস্টাইল',
    'ভিডিও',
    'বিনোদন',
    'স্বাস্থ্য'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Header(
              function: () {
                if (isNotificationOn) {
                  isNotificationOn = false;
                } else {
                  isNotificationOn = true;
                }
                print(isNotificationOn);
              },
            ),
            SizedBox(
              height: Get.height * 0.7,
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, index) {
                    return myFlatButtonGrey(categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
