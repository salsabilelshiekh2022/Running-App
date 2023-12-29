import 'package:flutter/material.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/history/view.dart';

import '../../../widgets/app_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppText(
            text: 'History',
            fontSize: 18,
          ),
          InkWell(
            onTap: () {
              AppRouter.navigateTo(const HistoryView());
            },
            child: const AppText(
              text: 'See All',
              fontSize: 14,
              color: Color(0xFF7B61FF),
            ),
          ),
        ],
      ),
    );
  }
}
