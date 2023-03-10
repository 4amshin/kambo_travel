import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kambo_travel/pages/home/widget/top_app_title.dart';

import '../../../model/place_model.dart';
import '../../detail/view/detail_view.dart';
import '../widget/home_category_item.dart';
import '../widget/home_tab_bar.dart';
import '../widget/home_tab_bar_view.dart';
import '../widget/recommended_list_place.dart';
import '../widget/search_widget.dart';

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
    TabController tabController = TabController(
      length: 5,
      vsync: this,
    );
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            const TopAppTitle(),
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
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.centerLeft,
                child: HomeTabBar(
                  controller: tabController,
                ),
              ),
            ),
            SizedBox(
              height: 290,
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: touristItem.length,
                      itemBuilder: ((context, index) {
                        TouristPlace item = touristItem[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailView(
                                        item: item,
                                      )),
                            );
                          },
                          child: HomeCategoryItem(
                            heroTag: item.heroTag,
                            title: item.placeName,
                            category: item.placeCategory,
                            imgAsset: item.imgAsset,
                            iconAsset: item.iconAsset,
                          ),
                        );
                      }),
                    ),
                  ),
                  const HomeTabBarView(category: 'Cafe/Resto'),
                  const HomeTabBarView(category: 'HomeStay'),
                  const HomeTabBarView(category: 'Camp'),
                  const HomeTabBarView(category: 'Taman'),
                ],
              ),
            ),
            const Text(
              "Recomended",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const RecommendedListPlace(),
          ],
        ),
      ),
    );
  }
}
