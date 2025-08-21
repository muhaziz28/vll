import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class SignupPrompt extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? questionText;
  final String? actionText;

  const SignupPrompt({
    super.key,
    this.onPressed,
    this.questionText = "Don't have an account? ",
    this.actionText = "sign up here",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText!,
          style: AppText.interStyle.copyWith(color: Colors.black, fontSize: 14),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            actionText!,
            style: TextStyle(color: AppColors.blue4, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
