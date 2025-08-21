import 'package:flutter/material.dart';
import 'package:llv/_globals/components/button_widget.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/auth/ui/screens/register_screen.dart';
import 'package:llv/features/auth/ui/widgets/devider_with_text_section.dart';
import 'package:llv/features/auth/ui/widgets/google_button.dart';
import 'package:llv/features/auth/ui/widgets/sign_in_form_section.dart';
import 'package:llv/features/auth/ui/widgets/signup_prompt.dart';
import 'package:llv/features/auth/ui/widgets/terms_privacy_text.dart';
import 'package:llv/features/auth/ui/widgets/welcome_section.dart';
import 'package:llv/wrapper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            SignInFormSection(
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ButtonWidget(
                label: "Continue",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => WrapperScreen()),
                ),
              ),
            ),
            const SizedBox(height: 24),
            DeviderWithTextSection(label: 'or'),
            const SizedBox(height: 24),
            GoogleButton(),
            const SizedBox(height: 32),
            TermsPrivacyText(),
            const SizedBox(height: 28),
            SignupPrompt(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => RegisterScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
