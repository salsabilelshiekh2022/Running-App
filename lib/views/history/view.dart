import 'package:flutter/material.dart';
import 'package:running_app/widgets/app_text.dart';

import '../../widgets/information_box.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: "History",
          fontSize: 16,
        ),
        leading: Image.asset('assets/images/arrowLeft.png'),
        actions: [
          Image.asset('assets/images/directNotification.png'),
          Image.asset('assets/images/smsNotification.png'),
        ],
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            InformationBox(),
          ],
        ),
      )),
    );
  }
}
