import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kambo_travel/pages/detail/widget/dv_back_button.dart';
import 'package:kambo_travel/pages/detail/widget/dv_rating_box.dart';

class DvTopImage extends StatelessWidget {
  final String? title;
  final String? category;
  final String? imgAsset;
  final String? heroTag;
  final String? iconAsset;
  final String? rating;
  const DvTopImage({
    Key? key,
    this.title,
    this.category,
    this.imgAsset,
    this.heroTag,
    this.iconAsset,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: heroTag!,
          child: Container(
            height: 350.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0, 5),
                  blurRadius: 15,
                  spreadRadius: 5,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  imgAsset ?? 'assets/images/default.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Container(
              height: 350.0,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.transparent,
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DvBackButton(
                onTap: () => Navigator.pop(context),
              ),
              const SizedBox(height: 220.0),
              Text(
                title ?? "Place Name",
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconAsset ?? 'assets/icon/cafe.svg',
                    color: Colors.white70,
                    height: 14,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    category ?? "Category",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 10),
                  DvRatingBox(
                    rating: rating,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
