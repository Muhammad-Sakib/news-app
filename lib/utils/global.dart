import 'package:flutter/material.dart';

Color black = Color(0xFF0F0E0E);
Color grey = Color(0xFF494949);
Color orange = Color(0xFFF1582C);
Color white = Colors.white;
bool isNotificationOn = false;

double heightSize(context, {size}) {
  return MediaQuery.of(context).size.height * size;
}

double widthSize(context, {size}) {
  return MediaQuery.of(context).size.width * size;
}
