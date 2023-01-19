import 'package:flutter/material.dart';

class DvActivityContent extends StatelessWidget {
  final String? imgAsset;
  const DvActivityContent({
    Key? key,
    this.imgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.red[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(
            imgAsset ?? 'assets/images/default.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
