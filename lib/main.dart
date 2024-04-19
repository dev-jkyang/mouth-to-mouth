import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mouth_to_mouth/model/method.dart';
import 'package:mouth_to_mouth/model/mtm_english_data.dart';
import 'package:mouth_to_mouth/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mouth To Mouth',
      theme: Theme.of(context),
      initialRoute: '/main',
      getPages: [
        GetPage(name: '/main', page: () => const MainPage()),
      ],
    );
  }
}
