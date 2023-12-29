import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_app/constants.dart';
import 'package:running_app/core/functions/validator.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/login/cubit.dart';
import 'package:running_app/views/register/view.dart';
import 'package:running_app/widgets/app_button.dart';
import 'package:running_app/widgets/app_text.dart';

import '../../widgets/app_social_button.dart';
import '../../widgets/app_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        final cubit = LoginCubit.of(context);
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/Logoo.png',
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const AppText(
                        text: 'Log In',
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppTextFormField(
                        hintText: 'Email',
                        keyBoardType: TextInputType.emailAddress,
                        onSave: (data) {
                          cubit.email = data;
                        },
                        validator: (value) {
                          return Validator.validateEmail(value);
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AppTextFormField(
                        hintText: 'Password',
                        keyBoardType: TextInputType.visiblePassword,
                        onSave: (data) {
                          cubit.password = data;
                        },
                        validator: (value) {
                          return Validator.validatePassword(value);
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: true,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                                visualDensity: VisualDensity.compact,
                                onChanged: (x) {},
                              ),
                              const AppText(
                                text: 'Remember Me ',
                                fontFamily: "Lato",
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: const AppText(
                              text: 'Forgot Password ?',
                              fontFamily: "Lato",
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      AppButton(
                        title: 'Log In',
                        onTap: () {
                          cubit.loginWithEmailAndPasword();
                        },
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          Container(
                            color: kDividerColor,
                            width: 80,
                            height: 1,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          const AppText(
                            text: 'Or continue with',
                            color: kDividerColor,
                            fontSize: 12,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Container(
                            color: kDividerColor,
                            width: 80,
                            height: 1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          AppSocialButton(
                            onTap: () {},
                            image: 'assets/images/googleLogo.png',
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          AppSocialButton(
                            image: 'assets/images/facebookLogo.png',
                            onTap: () {},
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          AppSocialButton(
                            image: 'assets/images/twitterLogo.png',
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          AppRouter.navigateAndPop(const RegisterView());
                        },
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'New User? ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFF677FFF),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 34,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
