import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopAppTitle extends StatelessWidget {
  const TopAppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/logo/kambo.svg',
          height: 30,
          color: Colors.indigo,
        ),
        SvgPicture.asset(
          'assets/icon/direct-up.svg',
          height: 20,
          color: Colors.indigo,
        ),
      ],
    );
  }
}
