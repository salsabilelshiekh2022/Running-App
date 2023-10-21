import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:running_app/constants.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/welcome/view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const WelcomeView(),
    );
  }
}
