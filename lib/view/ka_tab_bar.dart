import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class KaTabBar extends StatefulWidget {
  const KaTabBar({Key? key}) : super(key: key);

  @override
  State<KaTabBar> createState() => _KaTabBarState();
}

class _KaTabBarState extends State<KaTabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
      length: 5,
      vsync: this,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: const [],
        ),
        body: Builder(builder: (context) {
          return SafeArea(
            minimum: const EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
            ),
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      // indicatorSize: TabBarIndicatorSize.label,
                      // indicatorWeight: 3,
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
                        Tab(text: "Places"),
                        Tab(text: "Emotions"),
                        Tab(text: "Emotions"),
                        Tab(text: "Emotions"),
                        Tab(text: "Inspiration"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Center(child: Text('First')),
                      Center(child: Text('Second')),
                      Center(child: Text('Third')),
                      Center(child: Text('Fourth')),
                      Center(child: Text('Fifth')),
                    ],
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
