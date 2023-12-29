import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key, required this.imageSrc, required this.title});
  final String imageSrc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 174,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0x662F3C50),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C1C252C),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageSrc),
          const SizedBox(
            height: 5,
          ),
          const AppText(
            text: "Nike",
            color: Color(0xFFCDCDCD),
            fontSize: 10,
          ),
          AppText(
            text: title,
            fontSize: 12,
          )
        ],
      ),
    );
  }
}
