import 'package:flutter/material.dart';
import 'package:kambo_travel/widget/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Kambo Travel',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.align_horizontal_center_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Text(
              "Where do you want to go?",
              style: TextStyle(
                height: 1,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            const SearchWidget(),
          ],
        ),
      ),
    );
  }
}
