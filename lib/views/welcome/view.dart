import 'package:flutter/material.dart';
import 'package:running_app/constants.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/onBoarding/view.dart';
import 'package:running_app/widgets/app_button.dart';
import 'package:running_app/widgets/app_text.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 67,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/getStarted.png',
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 480,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: AppText(
                        text: 'Running App',
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: AppText(
                        text:
                            'Run and earn with our app. Some text Example will be her',
                        color: kWhiteColor,
                        maxLines: 2,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    AppButton(
                      title: 'Get Started',
                      onTap: () {
                        AppRouter.navigateTo(const OnboardingView());
                      },
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
