import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kambo_travel/pages/home/widget/home_bottom_navbar.dart';

class TestSite extends StatefulWidget {
  const TestSite({Key? key}) : super(key: key);

  @override
  _TestSiteState createState() => _TestSiteState();
}

class _TestSiteState extends State<TestSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 10,
          top: 5,
        ),
        child: ListView(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/logo/kambo.svg',
                  height: 40,
                  color: Colors.indigo,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
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
