import 'home_navigation.dart';
import 'mvc_properti/state_util.dart';
import 'package:flutter/material.dart';
import 'pages/detail/view/detail_view.dart';
import 'test_site.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kambo Travel',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const HomeNavigation(),
    );
  }
}
