import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kambo_travel/core.dart';
import 'package:kambo_travel/pages/bookmark/view/bookmark_view.dart';
import 'package:kambo_travel/pages/home/view/home_view.dart';
import 'package:kambo_travel/pages/navigation/view/navigation_view.dart';
import 'package:kambo_travel/pages/setting/view/setting_view.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  _HomeNavigationState createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    HomeView(),
    NavigationView(),
    BookmarkView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: navBarItem.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) {
            KaBottomNavBar item = navBarItem[index];
            return InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == _selectedIndex ? 0 : size.width * .029,
                      right: size.width * .0650,
                      left: size.width * .0650,
                    ),
                    width: size.width * .080,
                    height: index == _selectedIndex ? size.width * .014 : 0,
                    decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    item.svgAssest!,
                    height: _selectedIndex == index ? 25 : 20,
                    color: _selectedIndex == index
                        ? Colors.indigo
                        : Colors.grey[300],
                  ),
                  SizedBox(height: size.width * .03),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
