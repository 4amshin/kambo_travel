import 'package:flutter/material.dart';
import 'package:kambo_travel/widget/ka_item_container.dart';
import 'package:kambo_travel/widget/search_widget.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
      length: 5,
      vsync: this,
    );
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
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25),
            const SearchWidget(),
            const SizedBox(height: 20),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
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
                    Tab(text: "Cafe"),
                    Tab(text: "Penginapan"),
                    Tab(text: "Camp"),
                    Tab(text: "Kedai"),
                    Tab(text: "Taman"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 290,
              // color: Colors.red,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SizedBox(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        KaItemContainer(color: Colors.amber),
                        KaItemContainer(color: Colors.indigo),
                        KaItemContainer(color: Colors.teal),
                      ],
                    ),
                  ),
                  const Center(child: Text('Second')),
                  const Center(child: Text('Third')),
                  const Center(child: Text('Fourth')),
                  const Center(child: Text('Fifth')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
