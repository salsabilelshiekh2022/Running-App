import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: const NewWalletBody(),
    );
  }
}
