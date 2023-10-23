import 'package:flutter/material.dart';
import 'package:running_app/constants.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({super.key, this.onTap, required this.image});
  final void Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 94,
        height: 72,
        decoration: ShapeDecoration(
          color: kSecoundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF535E6E)),
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
        child: Image.asset(image),
      ),
    );
  }
}
