import 'package:flutter/material.dart';

import 'banner_item.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          BannerItem(
            color2: Color(0xFFFF3A50),
            color1: Color(0xFFF45C43),
          ),
          SizedBox(
            width: 8,
          ),
          BannerItem(
            color2: Color(0xFF614385),
            color1: Color(0xFF516395),
          ),
        ],
      ),
    );
  }
}
