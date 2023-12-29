import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class CountBox extends StatelessWidget {
  const CountBox(
      {super.key,
      required this.count,
      required this.name,
      required this.imageSrc});

  final String count;
  final String name;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 125,
      padding: const EdgeInsets.only(top: 28, bottom: 27),
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        children: [
          AppText(
            text: count,
            fontSize: 38,
            fontFamily: 'Bebas Neue',
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: Image.asset(
                  imageSrc,
                  width: 16,
                  height: 16,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 4),
              AppText(
                text: name,
                fontSize: 12,
                color: const Color(0xFFCDCDCD),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
