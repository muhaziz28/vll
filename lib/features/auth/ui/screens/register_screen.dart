import 'package:flutter/material.dart';
import 'package:llv/_globals/components/button_widget.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/auth/ui/widgets/devider_with_text_section.dart';
import 'package:llv/features/auth/ui/widgets/google_button.dart';
import 'package:llv/features/auth/ui/widgets/sign_up_form_section.dart';
import 'package:llv/features/auth/ui/widgets/signup_prompt.dart';
import 'package:llv/features/auth/ui/widgets/terms_privacy_text.dart';
import 'package:llv/features/auth/ui/widgets/welcome_section.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        top: true,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          children: [
            WelcomeSection(),
            const SizedBox(height: 42),
            SignUpFormSection(
              emailController: _emailController,
              passwordController: _passwordController,
              confirmPasswordController: _confirmPasswordController,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ButtonWidget(label: "Continue", onPressed: () {}),
            ),
            const SizedBox(height: 24),
            DeviderWithTextSection(label: 'or sign up with'),
            const SizedBox(height: 24),
            GoogleButton(),
            const SizedBox(height: 32),
            TermsPrivacyText(),
            const SizedBox(height: 28),
            SignupPrompt(
              questionText: 'Already have an account? ',
              actionText: 'sign in here',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
