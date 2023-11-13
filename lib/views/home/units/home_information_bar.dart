import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class HomeInformationBar extends StatelessWidget {
  const HomeInformationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '14,000 / ',
                style: TextStyle(
                  color: Color(0xFFCDCDCD),
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: '15,000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ' steps ',
                style: TextStyle(
                  color: Color(0xFFCDCDCD),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        const AppText(
          text: 'Level 5',
          color: Color(0xFFFFC931),
          fontSize: 20,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          width: 12,
        ),
        Image.asset(
          'assets/images/levelBadge.png',
        )
      ],
    );
  }
}
