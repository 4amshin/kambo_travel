import 'package:flutter/material.dart';
import 'package:kambo_travel/model/place_model.dart';

class RecomendedListPlace extends StatelessWidget {
  const RecomendedListPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      child: ListView.builder(
        itemCount: touristItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          TouristPlace item = touristItem[index];
          return Container(
            width: 145.0,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 5),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: item.color,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.placeName!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          item.placeCategory!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 8.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
