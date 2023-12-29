import 'package:flutter/material.dart';

import '../../widgets/history_card.dart';
import 'units/count_box.dart';
import 'units/header.dart';
import 'units/home_app_bar.dart';
import 'units/home_information_bar.dart';
import 'units/home_progress_bar.dart';
import 'units/share_box.dart';
import 'units/today_information_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Image.asset("assets/images/Background.png"),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 446,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF7B61FF), Color(0xff4b4791)],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: const SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HomeAppBar(),
                          SizedBox(
                            height: 26,
                          ),
                          HomeInformationBar(),
                          SizedBox(
                            height: 14,
                          ),
                          HomeProgressBar(),
                          SizedBox(
                            height: 16,
                          ),
                          TodayInformationBox(),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              CountBox(
                                count: '53,524',
                                name: 'Steps',
                                imageSrc: "assets/images/steps.png",
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              CountBox(
                                count: '1000',
                                name: 'Earned Points',
                                imageSrc: "assets/images/coin.png",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ShareBox(),
                const SizedBox(
                  height: 24,
                ),
                const Header(),
                ListView.builder(
                  padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: HistoryCard(),
                    );
                  },
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
