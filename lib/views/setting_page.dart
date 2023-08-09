import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/utils/global.dart';
import 'package:news_app/views/search_page.dart';
import 'package:news_app/widgets/my_widgets.dart';

class SettingPage extends StatefulWidget {
  SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isLoggedin = true;
  int currentIndex = 3;
  List screens = [SearchPage(), SettingPage(), SearchPage(), SettingPage()];
  void navigateScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
              height: 94,
              decoration: BoxDecoration(
                color: grey,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/dhaka_live_white.png'),
                  InkWell(
                    onTap: () {
                      if (isNotificationOn) {
                        isNotificationOn = false;
                      } else {
                        isNotificationOn = true;
                      }
                      print(isNotificationOn);
                    },
                    child: Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 40, right: 32),
              child: Column(
                children: [
                  isLoggedin
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 70,
                                    ),
                                    Image.asset(
                                      'assets/images/default_icon.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: InkWell(
                                        child: CircleAvatar(
                                          backgroundColor: white,
                                          radius: 14,
                                          child: Icon(
                                            Icons.add_a_photo,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  children: [
                                    myText('লগইন করুন', isBold: true),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    myText('0150000000', size: 15)
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.5,
                                          color: grey,
                                        ),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.edit,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        myText('এডিট', size: 15),
                                      ],
                                    )))
                          ],
                        )
                      : Row(
                          children: [
                            Image.asset(
                              'assets/images/default_icon.png',
                              height: 60,
                              width: 60,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    myText('লগইন করুন', color: orange),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.login_rounded,
                                      color: orange,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                  SizedBox(
                    height: 24,
                  ),
                  myTextButtonWithIcon('সাইট ম্যাপ'),
                  myTextButtonWithIcon('ভাষা'),
                  myTextButtonWithIcon('অ্যাপ সেটিং'),
                  myTextButtonWithIcon('গোপনীয়তা'),
                  myTextButtonWithIcon('সর্তসমূহ'),
                  myTextButtonWithIcon('যোগাযোগ'),
                  myTextButtonWithIcon('আমাদের সম্পর্কে'),
                  SizedBox(
                    height: 32,
                  ),
                  isLoggedin
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: myFlatButton('লগ আউট',
                              icon: Icons.logout_outlined),
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset(
                            'assets/images/facebook.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset(
                            'assets/images/telegram.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset(
                            'assets/images/twitter.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset(
                            'assets/images/linkedin.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset(
                            'assets/images/instagram.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(255, 172, 172, 172),
              blurRadius: 5,
            ),
          ],
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            selectedItemColor: orange,
            unselectedItemColor: grey,
            unselectedLabelStyle: TextStyle(color: grey),
            currentIndex: currentIndex,
            onTap: navigateScreen,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'হোম'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: 'ক্যাটাগরি'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined), label: 'হোম'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: 'ক্যাটাগরি'),
            ]),
      ),
    );
  }
}
