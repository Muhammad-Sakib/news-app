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
            children: [
              MyTextButtonSmall('Breaking News', color: orange),
            ],
          ),
        ),
      ],
    ),
  );
}
// Widget LatestNewsList(){return }
// Widget AdContainer(){return }
// Widget LatestNewsContainerList(){return }
// Widget SpotLightList(){return }
// Widget CategorizedNews(){return }
// Widget NewsVideosList(){return }