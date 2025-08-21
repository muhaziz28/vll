import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 32,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Welcome to,',
          style: AppText.madaStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.blue7,
          ),
        ),
        Text(
          'Virtual Linguistic Landscape',
          style: AppText.madaStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.blue7,
          ),
        ),
      ],
    );
  }
}
