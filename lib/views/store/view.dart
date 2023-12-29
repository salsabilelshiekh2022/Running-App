import 'package:flutter/material.dart';

import '../../widgets/app_text.dart';
import 'unit/store_body.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: "Store",
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
      body: const StoreBody(),
    );
  }
}
