import 'package:flutter/material.dart';
import 'package:news_app/views/category_page.dart';
import 'package:news_app/views/create_account_page.dart';
import 'package:news_app/views/home_page.dart';
import 'package:news_app/views/login_page.dart';
import 'package:news_app/views/search_page.dart';
import 'package:news_app/views/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
