import 'package:flutter/material.dart';
import 'package:running_app/constants.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/history/view.dart';
import 'package:running_app/views/new_wallet.dart/view.dart';
import 'package:running_app/views/verify_email/view.dart';

import '../views/add_address/view.dart';
import '../views/home/view.dart';

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
      onGenerateRoute: onGenerate,
      home: const NewWalletView(),
    );
  }
}
