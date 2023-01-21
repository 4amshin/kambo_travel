import 'package:flutter/material.dart';
import 'package:kambo_travel/pages/detail/widget/dv_facility_item.dart';

class DvFacilities extends StatelessWidget {
  final String? room;
  final String? bed;

  const DvFacilities({
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
          "Fasilitas",
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
                iconAssets: 'assets/icon/room.svg',
                content: room ?? "2 Bed\nRoom",
              ),
              DvFacilityItem(
                iconAssets: 'assets/icon/bed.svg',
                content: bed ?? "Twin\nBed",
              ),
              const DvFacilityItem(
                iconAssets: 'assets/icon/toilet.svg',
                content: "WC",
              ),
              const DvFacilityItem(
                iconAssets: 'assets/icon/dinner.svg',
                content: "Dinner",
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
