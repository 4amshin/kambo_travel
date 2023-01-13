import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DvOpenHour extends StatelessWidget {
  final String? openHour;
  const DvOpenHour({
    Key? key,
    this.openHour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 6),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icon/jam.svg',
                color: Colors.indigo,
                height: 20,
              ),
              const SizedBox(width: 5),
              const Text(
                "Open Hour",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          // const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              openHour ?? "06 Am - 20 Pm",
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
