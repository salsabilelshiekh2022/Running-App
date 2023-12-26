import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key, required this.color1, required this.color2});
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 291,
      height: 125,
      padding: const EdgeInsets.only(
        top: 25,
        left: 16,
        right: 4.74,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.98, -0.18),
          end: const Alignment(-0.98, 0.18),
          colors: [color1, color2],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Today's Special,",
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 4,
              ),
              AppText(
                text: "Get 2x point for every steps,\n only valid for today",
                fontSize: 12,
              )
            ],
          ),
          Image.asset("assets/images/bannerImg.png")
        ],
      ),
    );
  }
}
