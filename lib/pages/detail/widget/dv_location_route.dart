import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DvLocationRoute extends StatelessWidget {
  final String? rtRw;
  const DvLocationRoute({
    Key? key,
    this.rtRw,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icon/location_outline.svg',
              height: 13,
            ),
            const SizedBox(width: 5),
            Text(
              rtRw ?? "Daerah RT-RW",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 3.5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icon/map.svg',
              color: Colors.indigo,
              height: 13,
            ),
            const SizedBox(width: 5),
            const Text(
              "Rute Lokasi",
              style: TextStyle(
                fontSize: 12,
                color: Colors.indigo,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
