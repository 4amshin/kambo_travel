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
      indicatorPadding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 6,
      ),
      indicator: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.indigoAccent.withOpacity(0.5),
            offset: const Offset(0, 3),
            blurRadius: 2,
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
        Tab(text: "Cafe"),
        Tab(text: "Kedai"),
        Tab(text: "HomeStay"),
        Tab(text: "Camp"),
        Tab(text: "Taman"),
      ],
    );
  }
}
