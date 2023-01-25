import 'package:flutter/material.dart';
import 'dv_facility_item.dart';

class DvMenuCategory extends StatelessWidget {
  final String? room;
  final String? bed;

  const DvMenuCategory({
    Key? key,
    this.room,
    this.bed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Menu",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 65,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              DvFacilityItem(
                iconAssets: 'assets/icon/food.svg',
                content: room ?? "Food",
              ),
              DvFacilityItem(
                iconAssets: 'assets/icon/jus.svg',
                content: bed ?? "Juice",
              ),
              const DvFacilityItem(
                iconAssets: 'assets/icon/snack.svg',
                content: "Snack",
              ),
              const DvFacilityItem(
                iconAssets: 'assets/icon/hot-drink.svg',
                content: "Hot\nDrink",
              ),
              const DvFacilityItem(
                iconAssets: 'assets/icon/cold-drink.svg',
                content: "Cold\nDrink",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
