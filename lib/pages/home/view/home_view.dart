import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kambo_travel/model/place_model.dart';
import 'package:kambo_travel/pages/home/widget/home_category_item.dart';
import 'package:kambo_travel/pages/home/widget/home_tab_bar.dart';
import 'package:kambo_travel/pages/home/widget/home_tab_bar_view.dart';
import 'package:kambo_travel/pages/home/widget/recomended_list_place.dart';
import 'package:kambo_travel/pages/home/widget/search_widget.dart';

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
              children: [
                SvgPicture.asset(
                  'assets/logo/kambo.svg',
                  height: 30,
                  color: Colors.indigo,
                ),
                SvgPicture.asset(
                  'assets/icon/direct-up.svg',
                  height: 20,
                  color: Colors.indigo,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Where do you want to go?",
              style: TextStyle(
                height: 1,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
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
                          imgAsset: item.imgAsset,
                          iconAsset: item.iconAsset,
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
