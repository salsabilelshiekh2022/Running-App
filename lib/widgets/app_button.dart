import 'package:flutter/material.dart';
import 'package:running_app/constants.dart';
import 'package:running_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, this.onTap, required this.title, this.width = 300});
  final void Function()? onTap;
  final String title;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: kPrimaryColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: AppText(
            text: title,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
