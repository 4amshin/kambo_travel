import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kambo_travel/pages/detail/widget/dv_menu_category.dart';
import '../../../model/place_model.dart';
import '../widget/dv_activity_content.dart';
import '../widget/dv_facilities.dart';
import '../widget/dv_facility_item.dart';
import '../widget/dv_location_route.dart';
import '../widget/dv_open_hour.dart';
import '../widget/dv_rating_box.dart';
import '../widget/dv_top_image.dart';
import '../widget/dv_top_picture.dart';
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
      backgroundColor: Colors.white,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // DvTopImage(
          //   title: item.placeName,
          //   category: item.placeCategory,
          //   heroTag: item.heroTag,
          //   rating: item.rating,
          //   imgAsset: item.imgAsset,
          //   iconAsset: item.iconAsset,
          // ),
          DvTopPicture(
            heroTag: item.heroTag,
            imgAsset: item.imgAsset,
          ),
          SafeArea(
            minimum: const EdgeInsets.only(
              bottom: 10,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.placeName ?? 'Place Name Here',
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    DvRatingBox(
                      rating: item.rating,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DvOpenHour(
                      openHour: item.openHour,
                    ),
                    const DvLocationRoute(),
                  ],
                ),
                const SizedBox(height: 17),
                Container(
                  height: 2,
                  color: Colors.indigo,
                ),
                const SizedBox(height: 15),
                item.placeCategory == 'HomeStay'
                    ? const DvFacilities()
                    : Container(),
                item.placeCategory == 'Cafe/Resto'
                    ? const DvMenuCategory()
                    : Container(),
                const SizedBox(height: 10.0),
                Text(
                  "Kamu dapat menikmati suasana yang tenang sambil menikmati hidangan yang disajikan di sini. Alang Puyuh Cafe merupakan pilihan yang tepat bagi kamu yang ingin menikmati kopi sambil menikmati pemandangan yang indah.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 11.5,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 15.0),
                const Text(
                  "Galeri",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
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
                Text(
                  "text",
                  style: TextStyle(
                    fontSize: 50.0,
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
