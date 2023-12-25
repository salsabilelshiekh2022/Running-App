import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';
import 'new_wallet_card.dart';

class NewWalletBody extends StatelessWidget {
  const NewWalletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText(
              text: "Select the\n withdrawal type",
              fontWeight: FontWeight.w700,
              fontSize: 21,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            NewWalletCard(
              color: Color(0xFF7B61FF),
              iconSrc: Icons.account_balance_rounded,
              title: "Bank",
              subTitle:
                  "Unfortunately we don't know\n where to send your money",
            ),
            SizedBox(
              height: 12,
            ),
            NewWalletCard(
              color: Color(0xFfF14985),
              iconSrc: Icons.credit_card_outlined,
              title: "Card",
              subTitle:
                  "Unfortunately we don't know\n where to send your money",
            ),
          ],
        ),
      ),
    );
  }
}
