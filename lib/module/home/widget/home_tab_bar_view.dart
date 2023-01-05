import 'package:flutter/material.dart';
import 'package:kambo_travel/model/place_model.dart';
import 'package:kambo_travel/module/home/widget/home_category_item.dart';

class HomeTabBarView extends StatelessWidget {
  final String? category;
  const HomeTabBarView({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: touristItem.length,
        itemBuilder: ((context, index) {
          TouristPlace item = touristItem[index];
          if (item.placeCategory == category) {
            return HomeCategoryItem(
              color: item.color,
              title: item.placeName,
              category: item.placeCategory,
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
