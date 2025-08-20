import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/discover/ui/screens/discover_screen.dart';
import 'package:llv/features/home/ui/screens/home_screen.dart';
import 'package:llv/features/profile/ui/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({super.key});

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _customNavBarsItems(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
        colorBehindNavBar: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> _buildScreens() {
    return [HomeScreen(), DiscoverScreen(), ProfileScreen()];
  }

  List<PersistentBottomNavBarItem> _customNavBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/icon_home_fill.png'),
        ),
        inactiveIcon: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/icon_home.png'),
        ),

        activeColorPrimary: AppColors.blue4,
        inactiveColorPrimary: Colors.grey,
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/icon_discover_active.png'),
        ),
        inactiveIcon: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/icon_discover.png'),
        ),
        activeColorPrimary: AppColors.blue4,
        inactiveColorPrimary: Colors.grey,
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
      PersistentBottomNavBarItem(
        icon: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/icon_person_active.png'),
        ),
        inactiveIcon: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/icon_person_black.png'),
        ),
        activeColorPrimary: AppColors.blue4,
        inactiveColorPrimary: Colors.grey,
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ];
  }
}
