import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kambo_travel/model/place_model.dart';
import 'package:kambo_travel/module/home/widget/home_bottom_navbar.dart';
import 'package:kambo_travel/module/home/widget/home_category_item.dart';
import 'package:kambo_travel/module/home/widget/home_tab_bar.dart';
import 'package:kambo_travel/module/home/widget/home_tab_bar_view.dart';
import 'package:kambo_travel/module/home/widget/recomended_list_place.dart';
import 'package:kambo_travel/module/home/widget/search_widget.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    touristItem.shuffle(random);
    TabController _tabController = TabController(
      length: 6,
      vsync: this,
    );
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Kambo Travel',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.align_horizontal_center_sharp,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Where do you want to go?",
              style: TextStyle(
                height: 1,
                fontSize: 25,
                fontWeight: FontWeight.w600,
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
                child: HomeTabBar(
                  controller: _tabController,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 290,
              child: TabBarView(
                controller: _tabController,
                children: [
                  SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: touristItem.length,
                      itemBuilder: ((context, index) {
                        TouristPlace item = touristItem[index];
                        return HomeCategoryItem(
                          color: item.color,
                          title: item.placeName,
                          category: item.placeCategory,
                        );
                      }),
                    ),
                  ),
                  const HomeTabBarView(category: 'Cafe'),
                  const HomeTabBarView(category: 'Kedai'),
                  const HomeTabBarView(category: 'Penginapan'),
                  const HomeTabBarView(category: 'Camp'),
                  const HomeTabBarView(category: 'Taman'),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Recomended",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const RecomendedListPlace(),
          ],
        ),
      ),
    );
  }
}
