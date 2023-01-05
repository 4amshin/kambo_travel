import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
  final Color? color;
  final String? title;
  final String? category;
  const HomeCategoryItem({
    Key? key,
    required this.color,
    required this.title,
    required this.category,
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
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
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
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        const Icon(
                          Icons.house_rounded,
                          size: 15,
                          color: Colors.teal,
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
