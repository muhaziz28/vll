import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class LangkapLinguistikCard extends StatelessWidget {
  final String title;
  final String subTitle;
  const LangkapLinguistikCard({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppText.madaStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue7,
                  ),
                ),
                Text(subTitle, style: AppText.madaStyle.copyWith(fontSize: 8)),
              ],
            ),
          ),
          Icon(CupertinoIcons.chevron_right),
        ],
      ),
    );
  }
}
