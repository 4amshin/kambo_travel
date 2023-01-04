import 'package:flutter/material.dart';
import 'package:kambo_travel/view/home_view.dart';
import 'package:kambo_travel/view/ka_tab_bar.dart';
import 'package:kambo_travel/view/list_test.dart';

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
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
