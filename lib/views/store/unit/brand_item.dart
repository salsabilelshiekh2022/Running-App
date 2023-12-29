import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, this.imageSrc, required this.name});
  final String? imageSrc;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73.92,
      height: 73.92,
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
          ),
        ],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageSrc == ""
                ? const SizedBox()
                : Image.asset(imageSrc!,
                    width: 32, height: 32, fit: BoxFit.fill),
            AppText(
              text: name,
              color: const Color(0xFFCDCDCD),
              fontSize: 10,
            ),
          ]),
    );
  }
}
