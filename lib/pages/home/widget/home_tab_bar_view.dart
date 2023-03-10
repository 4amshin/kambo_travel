import 'package:flutter/material.dart';
import '../../../model/place_model.dart';
import '../../detail/view/detail_view.dart';
import 'home_category_item.dart';

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
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailView(item: item),
                  ),
                );
              },
              child: HomeCategoryItem(
                heroTag: item.heroTag,
                title: item.placeName,
                imgAsset: item.imgAsset,
                iconAsset: item.iconAsset,
                category: item.placeCategory,
              ),
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
