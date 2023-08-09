import 'package:flutter/material.dart';

import '../utils/global.dart';
import '../widgets/fragments.dart';
import '../widgets/my_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            FeaturedNewsContainer(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  LatestNewsList(),
                  // AdContainer(),
                  // LatestNewsContainerList(),
                  // SpotLightList(),
                  // CategorizedNews(),
                  // NewsVideosList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
