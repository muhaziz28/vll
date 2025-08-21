import 'package:flutter/material.dart';
import 'package:llv/_globals/components/input_widget.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class SignInFormSection extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignInFormSection({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign in your account",
          style: AppText.madaStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.blue7,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        InputWidget(
          hintText: "email@domain.com",
          controller: emailController,
          isPassword: false,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        InputWidget(
          hintText: "Password",
          controller: passwordController,
          isPassword: true,
          keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
