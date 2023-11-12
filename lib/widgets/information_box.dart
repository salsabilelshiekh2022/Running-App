import 'package:flutter/material.dart';

import 'information_details.dart';

class InformationBox extends StatelessWidget {
  const InformationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 96,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const InformationDetails(
                image: 'assets/images/timer.png',
                name: "Time",
                value: "18.3 H"),
            const SizedBox(
              width: 12,
            ),
            Container(
              width: 1,
              height: 21,
              color: Colors.white,
            ),
            const SizedBox(
              width: 12,
            ),
            const InformationDetails(
                image: 'assets/images/routing.png',
                name: "Distance",
                value: "48,7 KM"),
            const SizedBox(
              width: 12,
            ),
            Container(
              width: 1,
              height: 21,
              color: Colors.white,
            ),
            const SizedBox(
              width: 12,
            ),
            const InformationDetails(
                image: 'assets/images/heartCircle.png',
                name: "Heart Beat",
                value: "123 BPM"),
          ],
        ),
      ),
    );
  }
}
