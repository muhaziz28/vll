import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';

class DeviderWithTextSection extends StatelessWidget {
  final String label;
  const DeviderWithTextSection({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.outlineColor, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            label,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
        ),
        Expanded(child: Divider(color: AppColors.outlineColor, thickness: 1)),
      ],
    );
  }
}
