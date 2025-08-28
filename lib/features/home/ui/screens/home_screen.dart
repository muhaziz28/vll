import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/home/ui/widgets/header_section.dart';
import 'package:llv/features/home/ui/widgets/main_menu_section.dart';
import 'package:llv/features/home/ui/widgets/recommendation_card.dart';
import 'package:llv/features/home/ui/widgets/slider_section.dart';
import 'package:llv/features/home/ui/widgets/welcome_user_section.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? onHideNavBar;
  final VoidCallback? onShowNavBar;
  final Function(Widget)? onNavigate;
  const HomeScreen({
    super.key,
    this.onHideNavBar,
    this.onShowNavBar,
    this.onNavigate,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> _banner = [
    {'image': 'assets/banner_image_3.png', 'text': 'Tour De Singkarak'},
    {'image': 'assets/banner_image_2.png', 'text': 'Tabuik'},
    {'image': 'assets/banner_image_3.png', 'text': 'Pekan Budaya'},
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        _currentPage = (_currentPage + 1) % _banner.length;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        _startAutoSlide();
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(),
                const SizedBox(height: 14),
                WelcomeUserSection(),
                const SizedBox(height: 12),
                SliderSection(
                  controller: _pageController,
                  banner: _banner,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  currentPage: _currentPage,
                ),
                const SizedBox(height: 14),
                MainMenuSection(),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rekomendasi',
                          style: TextStyle(
                            color: AppColors.blue7,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('tempat  menarik untuk di kunjungi'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'lihat semua',
                        style: TextStyle(color: AppColors.blue4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                RecommendationCard(),
                RecommendationCard(),
                RecommendationCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
