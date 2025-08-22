import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/discover/ui/widgets/post_card.dart';

class DiscoverScreen extends StatelessWidget {
  final VoidCallback? onHideNavBar;
  final VoidCallback? onShowNavBar;
  final Function(Widget)? onNavigate;
  const DiscoverScreen({
    super.key,
    this.onHideNavBar,
    this.onShowNavBar,
    this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.blue0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.blue15,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('assets/user_image.png'),
                          backgroundColor: Colors.grey[200],
                          onBackgroundImageError: (exception, stackTrace) {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "Bayu Man",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.fieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Ayo bagikan momen mu",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            PostCard(),
          ],
        ),
      ),
    );
  }
}
