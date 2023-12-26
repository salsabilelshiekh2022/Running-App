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
      body: const StoreBody(),
    );
  }
}
