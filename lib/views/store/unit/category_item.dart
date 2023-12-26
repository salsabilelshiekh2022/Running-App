import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Image.network(
            "https://i.pinimg.com/564x/86/25/0b/86250bf286c208a413cdade29d238482.jpg",
            width: 56,
            height: 56,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'New',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFCDCDCD),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
