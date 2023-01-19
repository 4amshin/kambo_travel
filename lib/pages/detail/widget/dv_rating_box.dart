import 'package:flutter/material.dart';

class DvRatingBox extends StatelessWidget {
  final String? rating;
  const DvRatingBox({
    Key? key,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 15.5,
        ),
        const SizedBox(width: 4),
        Text(
          rating ?? "4,5",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
