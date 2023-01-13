import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

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
      indicator: DotIndicator(
        color: Colors.indigo,
        distanceFromCenter: 15,
        radius: 3,
        paintingStyle: PaintingStyle.fill,
      ),
      physics: const BouncingScrollPhysics(),
      labelColor: Colors.indigo,
      indicatorColor: Colors.indigo,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelColor: Colors.grey[400],
      tabs: const [
        Tab(text: "Semua"),
        Tab(text: "Cafe"),
        Tab(text: "Kedai"),
        Tab(text: "HomeStay"),
        Tab(text: "Camp"),
        Tab(text: "Taman"),
      ],
    );
  }
}
