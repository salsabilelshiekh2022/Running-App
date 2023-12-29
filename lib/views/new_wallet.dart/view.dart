import 'package:flutter/material.dart';
import 'package:running_app/widgets/app_text.dart';

import 'units/new_wallet_body.dart';

class NewWalletView extends StatelessWidget {
  const NewWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: "New Wallet",
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
      body: const NewWalletBody(),
    );
  }
}
