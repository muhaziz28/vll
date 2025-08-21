import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class TermsPrivacyText extends StatelessWidget {
  const TermsPrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "By clicking continue, you agree to our ",
        style: AppText.madaStyle.copyWith(
          color: AppColors.hintLabelColor,
          fontSize: 12,
        ),
        children: [
          TextSpan(
            text: "Terms of Service",
            style: AppText.madaStyle.copyWith(
              color: Colors.black,

              fontSize: 12,
            ),
          ),
          TextSpan(text: " and\n"),
          TextSpan(
            text: "Privacy Policy",
            style: AppText.madaStyle.copyWith(color: Colors.black),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
