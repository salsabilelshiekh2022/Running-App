import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:running_app/widgets/app_text.dart';

import '../../widgets/main_button.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Address',
          fontSize: 18,
        ),
        leading: const Icon(Icons.arrow_back_rounded),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 179,
            ),
            Center(
              child: SvgPicture.asset('assets/images/address.svg'),
            ),
            const SizedBox(
              height: 24,
            ),
            const AppText(
              text: 'Add your address',
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 46),
              child: AppText(
                text:
                    "Unfortunately we don't know where to deliver your items to you",
                maxLines: 2,
                textAlign: TextAlign.center,
                color: Color(0xFFCDCDCD),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 156,
            ),
            MainButton(
              onTap: () {},
              title: 'Add Address',
            ),
          ],
        ),
      ),
    );
  }
}
