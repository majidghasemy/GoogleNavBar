import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:googlenav/pages/home.dart';
import 'package:googlenav/pages/search.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../const.dart';
import '../controllers/navigatorControllers.dart';
import '../pages/likes.dart';
import '../pages/profile.dart';

class MainNavigator extends StatelessWidget {
  MainNavigator({Key? key}) : super(key: key);

  // Screens
  final List<Widget> screens = const [
    Home(),
    Heart(),
    Search(),
    Profile(),
  ];
  final List colorslist = const [
    Color(0xffFFE400),
    Color(0xffFF1700),
    Color(0xff49FF00),
    Color(0xffFF8E00),
  ];
  @override
  Widget build(BuildContext context) {
    /// Controller
    final _controller = Get.find<NavigatorController>();
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return SafeArea(
        child: Scaffold(
          /// Screens
          body: GetBuilder<NavigatorController>(
              id: "change NavBar Index",
              builder: (context) {
                return screens[_controller.selectedIndex];
              }),

          /// bottomNavigationBar
          bottomNavigationBar: GetBuilder<NavigatorController>(
              id: "change NavBar Index",
              builder: (context) {
                return Container(
                  decoration: const BoxDecoration(
                    color: BackgroundColor,
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8),
                      child: GNav(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        gap: 8,
                        activeColor: colorslist[_controller.selectedIndex],
                        //Colors.amber,
                        tabBackgroundColor:
                            colorslist[_controller.selectedIndex]
                                .withOpacity(0.15),
                        iconSize: 24,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),

                        //tabActiveBorder: Border.all(
                        //  color: Colors.amber, width: 2), // tab button

                        duration: const Duration(milliseconds: 400),

                        color: Colors.white,
                        selectedIndex: _controller.selectedIndex,

                        onTabChange: (index) {
                          _controller.changeNavBarIndex(index);
                        },
                        tabs: const [
                          GButton(
                            icon: IconlyLight.home,
                            text: 'Home',
                          ),
                          GButton(
                            icon: IconlyLight.heart,
                            text: 'Likes',
                          ),
                          GButton(
                            icon: IconlyLight.search,
                            //wallet,

                            text: 'Search',
                          ),
                          GButton(
                            icon: IconlyLight.profile,
                            text: 'Profile',
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      );
    } else {
      return Container();
    }
  }
}
