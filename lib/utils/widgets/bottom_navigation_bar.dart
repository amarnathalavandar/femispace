import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts/colors.dart';
import '../consts/images.dart';
import '../providers/providers.dart';

class FSBottomNavigationBar extends StatefulWidget {
  const FSBottomNavigationBar({super.key});

  @override
  FSBottomNavigationBarState createState() => FSBottomNavigationBarState();
}

class FSBottomNavigationBarState extends State<FSBottomNavigationBar> {
  final List<String> _filledIcons = [
    FSImages.home_filled,
    FSImages.search_filled,
    FSImages.chat_filled,
    FSImages.bookmark_filled,
    FSImages.settings_filled,
  ];

  final List<String> _outlinedIcons = [
    FSImages.home_outlined,
    FSImages.search_outlined,
    FSImages.chat_outlined,
    FSImages.bookmark_outlined,
    FSImages.settings_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.zero,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Consumer(builder: (context, ref, child) {
                  //print('BUILDING JUST NAVIGATION ONLY  - CHECK POINT');
                  final currentIndex = ref.watch(bottomNavIndexProvider);
                  return NavigationBar(
                    labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                    backgroundColor: Colors.white,
                    indicatorColor: Colors.white,
                    selectedIndex: currentIndex,
                    destinations: [
                      NavigationDestination(
                        icon: SvgPicture.asset(
                          currentIndex == 0
                              ? FSImages.home_filled
                              : FSImages.home_outlined,
                          color: currentIndex == 0
                              ? FSColors.primary
                              : FSColors.secondary,
                          width: 28,
                          height: 28,
                        ),
                        label: 'Home',
                      ),
                      NavigationDestination(
                        icon: SvgPicture.asset(
                          currentIndex == 1
                              ? FSImages.search_filled
                              : FSImages.search_outlined,
                          color: currentIndex == 1
                              ? FSColors.primary
                              : FSColors.secondary,
                          width: 28,
                          height: 28,
                        ),
                        label: 'Search',
                      ),
                      NavigationDestination(
                        icon: SvgPicture.asset(
                          currentIndex == 2
                              ? FSImages.chat_filled
                              : FSImages.chat_outlined,
                          color: currentIndex == 2
                              ? FSColors.primary
                              : FSColors.secondary,
                          width: 28,
                          height: 28,
                        ),
                        label: 'Chat',
                      ),
                      NavigationDestination(
                        icon: SvgPicture.asset(
                          currentIndex == 3
                              ? FSImages.bookmark_filled
                              : FSImages.bookmark_outlined,
                          color: currentIndex == 3
                              ? FSColors.primary
                              : FSColors.secondary,
                          width: 28,
                          height: 28,
                        ),
                        label: 'BookMark',
                      ),
                      NavigationDestination(
                        icon: SvgPicture.asset(
                          currentIndex == 4
                              ? FSImages.settings_filled
                              : FSImages.settings_outlined,
                          color: currentIndex == 4
                              ? FSColors.primary
                              : FSColors.secondary,
                          width: 28,
                          height: 28,
                        ),
                        label: 'Settings',
                      ),
                    ],
                    onDestinationSelected: (value) {
                      ref
                          .read(bottomNavIndexProvider.notifier)
                          .update((state) => value);
                    },
                  );
                })
               ),
          ),
        ],
      ),
    );
  }
}
