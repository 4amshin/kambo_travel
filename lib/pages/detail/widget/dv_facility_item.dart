import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DvFacilityItem extends StatelessWidget {
  final String? iconAssets;
  final String? content;
  const DvFacilityItem({
    Key? key,
    this.iconAssets,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 7,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, 2),
            blurRadius: 5,
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: SvgPicture.asset(
              iconAssets ?? 'assets/icon/default.svg',
              height: 33,
              color: Colors.black54,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            content ?? "Text",
            style: const TextStyle(
              height: 1,
              fontSize: 12.0,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
