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
      height: 40,
      width: 100,
      padding: const EdgeInsets.only(
        right: 5,
        bottom: 2,
        top: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.indigo,
        boxShadow: [
          BoxShadow(
            color: Colors.indigoAccent.withOpacity(0.6),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icon/jam.svg',
            color: Colors.white,
            height: 25,
          ),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jam Buka',
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                openHour ?? '24 Jam',
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
