import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';

class WelcomeUserSection extends StatelessWidget {
  const WelcomeUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hi, Bayu!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.blue7,
          ),
        ),
        Text('Where do you want to go?', style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
