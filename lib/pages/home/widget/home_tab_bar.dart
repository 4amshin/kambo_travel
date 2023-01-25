import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  final TabController? controller;
  const HomeTabBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 6,
      ),
      dragStartBehavior: DragStartBehavior.down,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.indigoAccent.withOpacity(0.5),
            offset: const Offset(0, 3),
            blurRadius: 3,
          ),
        ],
      ),
      physics: const BouncingScrollPhysics(),
      labelColor: Colors.white,
      indicatorColor: Colors.indigo,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelColor: Colors.grey[400],
      tabs: const [
        Tab(text: "Semua"),
        Tab(text: "Cafe/Resto"),
        Tab(text: "HomeStay"),
        Tab(text: "Camp"),
        Tab(text: "Taman"),
      ],
    );
  }
}
