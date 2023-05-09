import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/app_colors.dart';
import 'home/home_screen.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({super.key});

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        // FeedsPage(),
        // NotificationPage(),
        // ProfilePage(),
        const SizedBox(),
        const SizedBox(),
        const SizedBox(),
        const SizedBox(),
      ][_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border:
                Border(top: BorderSide(color: AppColor.primarySoft, width: 2))),
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            (_selectedIndex == 0)
                ? BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/home.png'), label: '')
                : BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/home.png',
                      color: Colors.green,
                    ),
                    label: ''),
            (_selectedIndex == 1)
                ? BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/wallet.png'), label: '')
                : BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/wallet.png',
                      color: Colors.green,
                    ),
                    label: ''),
            (_selectedIndex == 2)
                ? const BottomNavigationBarItem(
                    // icon: Image.asset('assets/icons/Notification-active.svg'),
                    label: '',
                    icon: Icon(Icons.notifications_active))
                : const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications_active,
                      color: Colors.green,
                    ),
                    label: ''),
            (_selectedIndex == 3)
                ? const BottomNavigationBarItem(
                    // icon: SvgPicture.asset('assets/icons/Profile-active.svg'),
                    icon: Icon(Icons.settings),
                    label: '')
                : const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.green,
                    ),
                    label: ''),
          ],
        ),
      ),
    );
  }
}
