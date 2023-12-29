import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.imageSrc, required this.title});
  final String imageSrc;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Image.network(
            imageSrc,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFCDCDCD),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
