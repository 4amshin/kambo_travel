import 'package:flutter/material.dart';
import 'package:kambo_travel/model/place_model.dart';
import 'package:kambo_travel/widget/ka_item_container.dart';

class KaTabBarView extends StatelessWidget {
  final String? category;
  const KaTabBarView({
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
            return KaItemContainer(
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
