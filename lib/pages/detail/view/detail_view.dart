import 'package:flutter/material.dart';
import 'package:kambo_travel/model/place_model.dart';
import 'package:kambo_travel/pages/detail/widget/dv_activity_content.dart';
import 'package:kambo_travel/pages/detail/widget/dv_top_image.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  final TouristPlace item;
  const DetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    return Scaffold(
      body: ListView(
        children: [
          DvTopImage(
            imgAsset: item.imgAsset,
            title: item.placeName,
            category: item.placeCategory,
          ),
          SafeArea(
            minimum: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                Text(
                  "Kamu dapat menikmati suasana yang tenang sambil menikmati hidangan yang disajikan di sini. Alang Puyuh Cafe merupakan pilihan yang tepat bagi kamu yang ingin menikmati kopi sambil menikmati pemandangan yang indah.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 11.5,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 15.0),
                const Text(
                  "Top Activity",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      DvActivityContent(),
                      DvActivityContent(),
                      DvActivityContent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}
