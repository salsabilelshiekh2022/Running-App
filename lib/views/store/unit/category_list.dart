import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryItem(
              imageSrc: imagesSrc[index],
              title: categories[index],
            ),
          );
        },
      ),
    );
  }
}

List<String> imagesSrc = [
  "https://i.pinimg.com/736x/d2/c3/07/d2c3075802779ce4c044d37e46c002d3.jpg",
  "https://i.pinimg.com/736x/8f/0b/2e/8f0b2ec5e74f39b4f7fbc791e7420f3e.jpg",
  "https://i.pinimg.com/564x/2f/26/82/2f26825d89f30d58b685778d36824958.jpg",
  "https://i.pinimg.com/564x/1c/b2/51/1cb2517dca66f02372a0ad6d6326ebc9.jpg",
  "https://i.pinimg.com/564x/c5/c1/4b/c5c14b7e216f022a4baf79951ac27404.jpg",
  "https://i.pinimg.com/564x/f2/65/26/f2652615fbd129c2ec0ee166c88ed7d4.jpg",
  "https://i.pinimg.com/736x/d2/c3/07/d2c3075802779ce4c044d37e46c002d3.jpg",
  "https://i.pinimg.com/736x/8f/0b/2e/8f0b2ec5e74f39b4f7fbc791e7420f3e.jpg",
];

List<String> categories = [
  "New",
  "Men",
  "Women",
  "Kids",
  "Equip",
  "Beauty",
  "New",
  "Men",
];
