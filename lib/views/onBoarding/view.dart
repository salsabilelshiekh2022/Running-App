import 'package:flutter/material.dart';
import 'package:running_app/widgets/app_button.dart';
import 'package:running_app/widgets/app_text.dart';

import '../../constants.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const AppText(
              text: 'Skip',
              fontFamily: 'Lato',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 72,
          ),
          Center(
            child: Image.asset(
              'assets/images/onBoarding.png',
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: 311,
            height: 303,
            padding: const EdgeInsets.only(
              top: 48,
              left: 32,
              right: 32,
              bottom: 24,
            ),
            decoration: ShapeDecoration(
              color: kSecoundColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF535E6E)),
                borderRadius: BorderRadius.circular(64),
              ),
            ),
            child: const Column(
              children: [
                AppText(
                  text: 'Run',
                  textAlign: TextAlign.center,
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: 12,
                ),
                AppText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  textAlign: TextAlign.center,
                  color: Color(0xFFCDCDCD),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  maxLines: 5,
                ),
                SizedBox(
                  height: 40,
                ),
                AppButton(
                  title: 'Next',
                  width: 150,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
