import 'package:flutter/material.dart';
import 'package:kambo_travel/pages/detail/widget/dv_back_button.dart';

class DvTopPicture extends StatelessWidget {
  final String? heroTag;
  final String? imgAsset;
  const DvTopPicture({
    Key? key,
    this.heroTag,
    this.imgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Hero(
              tag: heroTag!,
              child: Container(
                height: 340,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(
                    image: AssetImage(imgAsset ?? 'assets/images/default.jpg'),
                    fit: BoxFit.cover,
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
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DvBackButton(
                          onTap: () => Navigator.pop(context),
                          icon: Icons.arrow_back_ios_new,
                        ),
                        DvBackButton(
                          onTap: () => Navigator.pop(context),
                          icon: Icons.bookmark,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 150,
                  vertical: 17.5,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
