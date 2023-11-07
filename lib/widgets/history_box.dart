import 'package:flutter/material.dart';

import '../constants.dart';
import 'app_text.dart';

class HistoryBox extends StatelessWidget {
  const HistoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        color: kSecoundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: kSecoundColor,
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: '27 May',
                color: kPrimaryColor,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  AppText(
                    text: '12.4 km',
                    color: Color(0xffcdcdcd),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  AppText(
                    text: '1222 kcal',
                    color: Color(0xffcdcdcd),
                  )
                ],
              )
            ],
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '11,120 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: 'Steps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          )
        ],
      ),
    );
  }
}
