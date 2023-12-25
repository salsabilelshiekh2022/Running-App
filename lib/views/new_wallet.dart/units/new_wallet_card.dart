import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class NewWalletCard extends StatelessWidget {
  const NewWalletCard(
      {super.key,
      required this.color,
      required this.iconSrc,
      required this.title,
      required this.subTitle});

  final Color color;
  final IconData iconSrc;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 128,
      decoration: ShapeDecoration(
        color: const Color(0xFF2F3C50),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(24),
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
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: ShapeDecoration(
                color: color,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Icon(
                iconSrc,
                color: Colors.white,
                size: 32,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 6,
                ),
                AppText(
                  text: subTitle,
                  color: const Color(0xffcdcdcd),
                  fontSize: 12,
                )
              ],
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xffbebebe),
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
