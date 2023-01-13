import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCategoryItem extends StatelessWidget {
  final String? title;
  final String? category;
  final String? imgAsset;
  final String? iconAsset;
  final String? heroTag;

  const HomeCategoryItem({
    Key? key,
    required this.title,
    required this.category,
    required this.imgAsset,
    required this.iconAsset,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: const Offset(0, 7),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Hero(
            tag: heroTag!,
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(
                      imgAsset ?? 'assets/images/default.jpg',
                    ),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: const Offset(0, 3),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? 'Nama Tempat',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        SvgPicture.asset(
                          iconAsset!,
                          color: Colors.indigo,
                          height: 13,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          category ?? 'Kategori Tempat',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  size: 17,
                  color: Colors.black87,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
