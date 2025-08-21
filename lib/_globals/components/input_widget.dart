import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;

  const InputWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppText.interStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppColors.hintLabelColor,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.outlineColor, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.outlineColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.blue4),
          ),
        ),
      ),
    );
  }
}
