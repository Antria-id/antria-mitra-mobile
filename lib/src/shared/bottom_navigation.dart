import 'package:antria_mitra_mobile/src/features/chat/presentation/pages/chat_list_page.dart';
import 'package:antria_mitra_mobile/src/features/history_transaksi/presentation/pages/history_transaksi.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/pages/home_page.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/pages/profile_page.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomePage(),
    const ChatListPage(),
    const HistoryTransaksiPage(),
    const ProfilePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: screens.elementAt(selectedIndex),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  gradient: AppColor.gradientTopColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.home_rounded,
                        size: 30,
                      ),
                      color: selectedIndex == 0
                          ? AppColor.whiteColor
                          : AppColor.greyColor,
                      onPressed: () => onItemTapped(0),
                    ),
                    InkWell(
                      onTap: () => onItemTapped(1),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble_text_fill,
                            size: 30,
                            color: selectedIndex == 1
                                ? AppColor.whiteColor
                                : AppColor.greyColor,
                          ),
                          const CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xffFF0000),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.history_rounded,
                        size: 30,
                      ),
                      color: selectedIndex == 2
                          ? AppColor.whiteColor
                          : AppColor.greyColor,
                      onPressed: () => onItemTapped(2),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.person_2_rounded,
                        size: 30,
                      ),
                      color: selectedIndex == 3
                          ? AppColor.whiteColor
                          : AppColor.greyColor,
                      onPressed: () => onItemTapped(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
