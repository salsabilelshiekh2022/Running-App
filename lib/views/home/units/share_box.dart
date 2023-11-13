import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class ShareBox extends StatelessWidget {
  const ShareBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, left: 16),
      width: 343,
      height: 125,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.98, -0.18),
          end: Alignment(-0.98, 0.18),
          colors: [Color(0xffcf68aa), Color(0xFF82AFFF)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: 'Share & Get',
                fontSize: 18,
              ),
              const SizedBox(
                height: 4,
              ),
              const AppText(
                text: 'Get 2x point for every steps, \n only valid for today',
                maxLines: 2,
                fontSize: 12,
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                width: 65,
                height: 24,
                padding:
                    const EdgeInsets.only(top: 5, left: 6, right: 8, bottom: 6),
                decoration: BoxDecoration(
                    color: const Color(0x332F3C50),
                    borderRadius: BorderRadius.circular(12)),
                child: const Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 12,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    AppText(
                      text: 'Share',
                      fontSize: 10,
                    )
                  ],
                ),
              )
            ],
          ),
          Image.asset('assets/images/share.png'),
        ],
      ),
    );
  }
}
