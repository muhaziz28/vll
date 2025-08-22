import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/discover/ui/screens/discover_screen.dart';
import 'package:llv/features/home/ui/screens/home_screen.dart';
import 'package:llv/features/profile/ui/screens/profile_screen.dart';

class DynamicWrapperScreen extends StatefulWidget {
  const DynamicWrapperScreen({super.key});

  @override
  State<DynamicWrapperScreen> createState() => _DynamicWrapperScreenState();
}

class _DynamicWrapperScreenState extends State<DynamicWrapperScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  bool _showNavBar = true;
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _indicatorPosition = 0.0;

  final List<Widget> _screens = [
    HomeScreen(),
    DiscoverScreen(),
    ProfileScreen(),
  ];

  final List<GlobalKey> _navItemKeys = [GlobalKey(), GlobalKey(), GlobalKey()];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateIndicatorPosition(_currentIndex, animate: false);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _updateIndicatorPosition(int index, {bool animate = true}) {
    final RenderBox renderBox =
        _navItemKeys[index].currentContext?.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    // Hitung posisi relatif terhadap parent container nav bar
    final navBarRenderBox = context.findRenderObject() as RenderBox;
    final navBarPosition = navBarRenderBox.localToGlobal(Offset.zero);

    final relativePosition = position.dx - navBarPosition.dx;
    final newPosition =
        relativePosition + (size.width / 2) - 40; // 40 = setengah dari 80

    if (animate) {
      _animationController.forward(from: 0.0);
    }

    setState(() {
      _indicatorPosition = newPosition;
    });
  }

  void hideNavBar() {
    setState(() {
      _showNavBar = false;
    });
  }

  void showNavBar() {
    setState(() {
      _showNavBar = true;
    });
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
    _updateIndicatorPosition(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens.map((screen) {
          return _wrapScreenWithCallbacks(screen);
        }).toList(),
      ),
      bottomNavigationBar: _showNavBar ? _buildCustomNavBar() : null,
    );
  }

  Widget _wrapScreenWithCallbacks(Widget screen) {
    if (screen is HomeScreen) {
      return HomeScreen(
        onHideNavBar: hideNavBar,
        onShowNavBar: showNavBar,
        onNavigate: (Widget page) {
          hideNavBar();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          ).then((_) {
            showNavBar();
          });
        },
      );
    }

    if (screen is DiscoverScreen) {
      return DiscoverScreen(
        onHideNavBar: hideNavBar,
        onShowNavBar: showNavBar,
        onNavigate: (Widget page) {
          hideNavBar();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          ).then((_) {
            showNavBar();
          });
        },
      );
    }

    if (screen is ProfileScreen) {
      return ProfileScreen(
        onHideNavBar: hideNavBar,
        onShowNavBar: showNavBar,
        onNavigate: (Widget page) {
          hideNavBar();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          ).then((_) {
            showNavBar();
          });
        },
      );
    }

    return screen;
  }

  Widget _buildCustomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 3,
            child: Stack(
              children: [
                Container(color: Colors.transparent),
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Positioned(
                      left: _indicatorPosition,
                      child: Container(
                        width: 80,
                        height: 3,
                        decoration: BoxDecoration(
                          color: AppColors.blue4,
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: .5),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(
                    key: _navItemKeys[0],
                    index: 0,
                    inactiveIcon: 'assets/icon_home.png',
                    activeIcon: 'assets/icon_home_fill.png',
                  ),
                  _buildNavItem(
                    key: _navItemKeys[1],
                    index: 1,
                    inactiveIcon: 'assets/icon_discover.png',
                    activeIcon: 'assets/icon_discover_active.png',
                  ),
                  _buildNavItem(
                    key: _navItemKeys[2],
                    index: 2,
                    inactiveIcon: 'assets/icon_person_black.png',
                    activeIcon: 'assets/icon_person_active.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required Key key,
    required int index,
    required String inactiveIcon,
    required String activeIcon,
  }) {
    bool isActive = _currentIndex == index;

    return GestureDetector(
      key: key,
      onTap: () => changeTab(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(isActive ? activeIcon : inactiveIcon),
            ),
          ],
        ),
      ),
    );
  }
}
