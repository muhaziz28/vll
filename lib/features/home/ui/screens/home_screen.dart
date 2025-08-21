import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/home/ui/widgets/recommendation_card.dart';
import 'package:llv/features/langkap_linguistik/ui/screens/langkap_linguistik_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo.png'),
                    Row(
                      children: [
                        Image.asset('assets/icon_person.png'),
                        const SizedBox(width: 12),
                        Image.asset('assets/icon_bell.png'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Text(
                  'Hi, Bayu!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue7,
                  ),
                ),
                Text(
                  'Where do you want to go?',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 12),
                // SizedBox(
                //   width: double.infinity,
                //   height: 136,
                //   child: PageView.builder(
                //     controller: _pageController,
                //     onPageChanged: (index) {
                //       setState(() {
                //         _currentPage = index;
                //       });
                //     },
                //     itemCount: _banner.length,
                //     itemBuilder: (context, index) {
                //       return Container(
                //         margin: const EdgeInsets.symmetric(horizontal: 4),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(8),
                //         ),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(8),
                //           child: Stack(
                //             children: [
                //               Image.asset(
                //                 _banner[index]['image'],
                //                 width: double.infinity,
                //                 height: 136,
                //                 fit: BoxFit.cover,
                //               ),
                //               Container(
                //                 width: double.infinity,
                //                 height: 136,
                //                 decoration: BoxDecoration(
                //                   gradient: LinearGradient(
                //                     colors: [
                //                       AppColors.blue4.withValues(alpha: 0.1),
                //                       AppColors.blue4.withValues(alpha: 0.7),
                //                     ],
                //                     begin: Alignment.topCenter,
                //                     end: Alignment.bottomCenter,
                //                   ),
                //                 ),
                //               ),
                //               Positioned(
                //                 top: 0,
                //                 left: 0,
                //                 right: 0,
                //                 bottom: 0,
                //                 child: Padding(
                //                   padding: const EdgeInsets.only(left: 20),
                //                   child: Column(
                //                     mainAxisAlignment: MainAxisAlignment.center,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       Text(
                //                         _banner[index]['text'],
                //                         style: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 18,
                //                           fontWeight: FontWeight.w600,
                //                           shadows: [
                //                             Shadow(
                //                               offset: Offset(1, 1),
                //                               blurRadius: 3,
                //                               color: Colors.black54,
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //               Positioned(
                //                 bottom: 12,
                //                 left: 0,
                //                 right: 0,
                //                 child: Row(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: List.generate(_banner.length, (
                //                     dotIndex,
                //                   ) {
                //                     return Container(
                //                       width: 8,
                //                       height: 8,
                //                       margin: const EdgeInsets.symmetric(
                //                         horizontal: 4,
                //                       ),
                //                       decoration: BoxDecoration(
                //                         shape: BoxShape.circle,
                //                         color: _currentPage == dotIndex
                //                             ? Colors.white
                //                             : Colors.white.withValues(
                //                                 alpha: .4,
                //                               ),
                //                       ),
                //                     );
                //                   }),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LangkapLinguistikScreen(),
                          ),
                        ),
                        child: Container(
                          height: 148,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/bg_peta.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/icon_map.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                'Peta',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 68,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.blue4,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/bg_lancap.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/icon_game_stick.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  'Permainan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: double.infinity,
                            height: 68,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.blue4,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/bg_lancap.png'),
                                fit: BoxFit.cover, // Tambahkan fit
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/icon_book.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    'Lanscap Linguistik',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
