import 'package:flutter/material.dart';
import 'package:kambo_travel/module/home/widget/home_bottom_navbar.dart';

class TestSite extends StatefulWidget {
  const TestSite({Key? key}) : super(key: key);

  @override
  _TestSiteState createState() => _TestSiteState();
}

class _TestSiteState extends State<TestSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Test Site",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 180.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.ibb.co/3pPYd14/freeban.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomNavbar(),
    );
  }
}
