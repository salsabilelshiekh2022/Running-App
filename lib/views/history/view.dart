import 'package:flutter/material.dart';
import 'package:running_app/widgets/app_text.dart';

import '../../widgets/history_box.dart';
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
          Row(
            children: [
              Image.asset('assets/images/directNotification.png'),
              const SizedBox(
                width: 8,
              ),
              Image.asset('assets/images/smsNotification.png'),
              const SizedBox(
                width: 16,
              )
            ],
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              const InformationBox(),
              ListView.builder(
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: HistoryBox(),
                  );
                },
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
