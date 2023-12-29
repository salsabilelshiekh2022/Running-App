import 'package:flutter/material.dart';
import 'package:running_app/widgets/app_text.dart';

import '../../widgets/history_card.dart';
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
        leading: GestureDetector(
          child: Row(
            children: [
              const SizedBox(
                width: 20,
                height: 20,
              ),
              Image.asset("assets/images/arrowLeft.png",
                  width: 24, height: 24, fit: BoxFit.fill),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Image.asset(
                'assets/images/directNotification.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/smsNotification.png',
                width: 24,
                height: 24,
              ),
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
                    child: HistoryCard(),
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
