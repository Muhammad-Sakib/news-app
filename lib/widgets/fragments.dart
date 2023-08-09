import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/utils/global.dart';

import 'my_widgets.dart';

Widget FeaturedNewsContainer() {
  return Container(
    child: Column(
      children: [
        SizedBox(
          child: Image.asset(
            'assets/images/test.png',
            height: 200,
            width: Get.width,
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MyTextButtonSmall('Breaking News', color: orange),
                  SizedBox(
                    width: 4,
                  ),
                  MyTextButtonSmall('National', color: grey),
                ],
              ),
              SizedBox(height: 4),
              myText('Title of the news', size: 24, isBold: true),
              SizedBox(height: 4),
              myText('Paragraph of the news. this is a news.', size: 17),
              myText('text',
                  color: const Color.fromARGB(255, 180, 180, 180), size: 15),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget LatestNewsList() {
  return Container(
    height: 140,
    padding: EdgeInsets.symmetric(vertical: 20),
    decoration:
        BoxDecoration(border: Border(top: BorderSide(width: 0.5, color: grey))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/test.png',
            width: 130,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}
// Widget AdContainer(){return }
// Widget LatestNewsContainerList(){return }
// Widget SpotLightList(){return }
// Widget CategorizedNews(){return }
// Widget NewsVideosList(){return }