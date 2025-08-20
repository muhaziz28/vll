import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';

class ProfileAction extends StatelessWidget {
  final String image;
  final String label;

  const ProfileAction({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image)),
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  label,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Icon(CupertinoIcons.right_chevron),
          ],
        ),
        const Divider(color: AppColors.blue05, height: 50),
      ],
    );
  }
}
