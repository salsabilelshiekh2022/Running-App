import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:running_app/views/history/view.dart';
import 'package:running_app/views/home/view.dart';
import 'package:running_app/views/new_wallet.dart/view.dart';
import 'package:running_app/views/store/view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  final _controller = PersistentTabController();
  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const HistoryView(),
      const StoreView(),
      const NewWalletView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house_alt_fill),
        activeColorPrimary: const Color(0xFF7B61FF),
        inactiveColorPrimary: Colors.white,
        iconSize: 26,
        textStyle: const TextStyle(fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.emoji_events_rounded),
        activeColorPrimary: const Color(0xff7B61FF),
        inactiveColorPrimary: Colors.white,
        iconSize: 26,
        textStyle: const TextStyle(fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.local_mall_rounded),
        activeColorPrimary: const Color(0xff7B61FF),
        inactiveColorPrimary: Colors.white,
        iconSize: 26,
        textStyle: const TextStyle(fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.payments_rounded),
        activeColorPrimary: const Color(0xff7B61FF),
        inactiveColorPrimary: Colors.white,
        iconSize: 26,
        textStyle: const TextStyle(fontSize: 10),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        margin: const EdgeInsets.only(bottom: 20, right: 22, left: 22),
        bottomScreenMargin: 0,
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: const Color(0xff2F3C50), // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(width: 1, color: Colors.white.withOpacity(0.2)),
            colorBehindNavBar: Colors.transparent,
            boxShadow: [
              const BoxShadow(
                color: Color(0x0C1C252C),
                blurRadius: 12,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ]),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12,

        // Choose the nav bar style with this property.
      ),
    );
  }
}
