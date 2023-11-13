import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.menu,
          color: Colors.white,
          size: 24,
        ),
        const SizedBox(
          width: 12,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(
            'https://i.pinimg.com/564x/d5/9a/34/d59a345de42375fd70f02b6a836dd5cf.jpg',
            width: 48,
            height: 48,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        const Column(
          children: [
            AppText(text: 'HELLO!'),
            AppText(
              text: 'Daniela',
              fontWeight: FontWeight.w600,
            )
          ],
        ),
        const Spacer(),
        Image.asset('assets/images/directNotification.png'),
        const SizedBox(
          width: 16,
        ),
        Image.asset('assets/images/smsNotification.png'),
      ],
    );
  }
}
