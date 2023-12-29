import 'package:flutter/material.dart';

import 'popular_item.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174,
      child: ListView.builder(
          itemCount: titles.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: PopularItem(
                imageSrc: images[index],
                title: titles[index],
              ),
            );
          }),
    );
  }
}

List<String> images = [
  "assets/images/shose.png",
  "assets/images/shose2.png",
  "assets/images/shose.png",
  "assets/images/shose2.png",
];

List<String> titles = [
  "Air Force 1 Low '07",
  "Air Lunaroll 1 ",
  "Air Force 1 Low '07",
  "Air Lunaroll 1 ",
];
