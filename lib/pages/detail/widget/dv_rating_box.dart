import 'package:flutter/material.dart';

class DvRatingBox extends StatelessWidget {
  final String? rating;
  const DvRatingBox({
    Key? key,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 45,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 3,
          left: 4,
          right: 5,
          top: 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 14,
            ),
            Text(
              rating ?? "4,5",
              style: const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
