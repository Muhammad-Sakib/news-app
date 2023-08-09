import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/global.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(24, 32, 24, 4),
              height: 96,
              decoration: BoxDecoration(
                color: grey,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)),
                      labelText: 'Even Densed TextFiled',
                      contentPadding: EdgeInsets.only(left: 16),
                      fillColor: white,
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        size: 25,
                        color: Color.fromARGB(255, 143, 143, 143),
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
