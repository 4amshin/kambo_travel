import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kambo_travel/model/bottom_nav_bar_model.dart';

class HomeBottomNavbar extends StatefulWidget {
  const HomeBottomNavbar({Key? key}) : super(key: key);

  @override
  _HomeBottomNavbarState createState() => _HomeBottomNavbarState();
}

class _HomeBottomNavbarState extends State<HomeBottomNavbar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      height: size.width * .155,
      decoration: BoxDecoration(
        color: Colors.indigo,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  item.svgAssest!,
                  height: _selectedIndex == index ? 25 : 20,
                  color:
                      _selectedIndex == index ? Colors.white : Colors.white60,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          );
        },
      ),
    );
  }
}
