import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/nav_bar.dart/view.dart';
import 'package:running_app/widgets/app_button.dart';
import 'package:running_app/widgets/app_text.dart';
import 'package:running_app/widgets/main_button.dart';
import 'package:running_app/widgets/otp_code.dart';

import '../../core/functions/snack_bar.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 69,
              ),
              Center(
                child: SvgPicture.asset('assets/images/verifyEmail.svg'),
              ),
              const SizedBox(
                height: 44,
              ),
              const AppText(
                text: 'Verify your email',
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 42),
                child: AppText(
                  text:
                      "Enter the email associated with your account we'll send email with password to verify",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  color: Color(0xFFCDCDCD),
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const PinCode(),
              const SizedBox(
                height: 80,
              ),
              AppButton(
                title: 'Verify Email',
                onTap: () {
                  showSnackBar(
                      "Account create successfully!", Colors.green[600]!);
                  AppRouter.navigateAndPop(const NavBarView());
                },
                width: 325,
              ),
              const SizedBox(
                height: 12,
              ),
              const MainButton(
                title: 'Open mail app',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
