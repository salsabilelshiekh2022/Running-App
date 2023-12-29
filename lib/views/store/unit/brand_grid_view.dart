import 'package:flutter/material.dart';

import 'brand_item.dart';

class BrandsGridView extends StatelessWidget {
  const BrandsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: brandsName.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 16, mainAxisSpacing: 16),
      itemBuilder: (context, index) {
        return BrandItem(
          name: brandsName[index],
          imageSrc: brandsImage[index],
        );
      },
    );
  }
}

List<String> brandsImage = [
  "assets/images/puma.png",
  "assets/images/reebok.png",
  "assets/images/nike.png",
  "assets/images/adidas.png",
  "assets/images/ua.png",
  "assets/images/puma.png",
  "assets/images/reebok.png",
  ""
];

List<String> brandsName = [
  "Puma",
  "Reebok",
  "Nike",
  "Adidas",
  "UA",
  "Puma",
  "Reebok",
  "See All"
];
