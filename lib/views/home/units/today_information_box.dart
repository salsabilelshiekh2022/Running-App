import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class TodayInformationBox extends StatelessWidget {
  const TodayInformationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 87,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/run.png'),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: '26 May',
                      fontSize: 11,
                      fontFamily: 'Open Sans',
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    AppText(
                      text: 'Today',
                      color: Color(0xFF43C465),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    AppText(
                      text: '01 : 09 : 44 ',
                      fontSize: 12,
                      color: Color(0xFFCDCDCD),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset("assets/images/Radius.png"),
          ],
        ),
      ),
    );
  }
}
