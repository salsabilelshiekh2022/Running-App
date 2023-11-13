import 'package:flutter/material.dart';

import 'app_text.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, this.onTap, required this.title});

  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: 325,
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 14),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Color(0xFF7B61FF)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: AppText(
            text: title,
            textAlign: TextAlign.center,
            color: const Color(0xFF7B61FF),
            fontSize: 18,
          ),
        ));
  }
}
