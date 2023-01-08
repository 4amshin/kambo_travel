import 'package:flutter/material.dart';
import 'package:kambo_travel/pages/detail/widget/dv_back_button.dart';

class DvTopImage extends StatelessWidget {
  final String? title;
  final String? category;
  final String? imgAsset;
  const DvTopImage({
    Key? key,
    this.title,
    this.category,
    this.imgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.0,
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
        ),
        Container(
          height: 300.0,
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
          child: Padding(
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
                const SizedBox(height: 165.0),
                Text(
                  title ?? "Place Name",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  category ?? "Category",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   bottom: 25,
        //   left: 25,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: const [
        //       Text(
        //         "Place Name",
        //         style: TextStyle(
        //           fontSize: 25,
        //           color: Colors.white,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //       Text(
        //         "Location",
        //         style: TextStyle(
        //           fontSize: 13,
        //           color: Colors.white54,
        //           fontWeight: FontWeight.w400,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
