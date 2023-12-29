import 'package:flutter/material.dart';
import 'package:running_app/constants.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/add_address/view.dart';
import 'package:running_app/views/home/view.dart';
import 'package:running_app/views/login/view.dart';
import 'package:running_app/views/nav_bar.dart/view.dart';
import 'package:running_app/views/new_wallet.dart/view.dart';
import 'package:running_app/views/onBoarding/view.dart';
import 'package:running_app/views/register/view.dart';
import 'package:running_app/views/store/view.dart';
import 'package:running_app/views/verify_email/view.dart';
import 'package:running_app/views/welcome/view.dart';

import '../core/functions/snack_bar.dart';

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Running App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
            backgroundColor: kBackgroundColor,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white)),
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldKey,
      onGenerateRoute: onGenerate,
      home: const WelcomeView(),
    );
  }
}
