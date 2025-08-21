import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';
import 'package:llv/features/langkap_linguistik/ui/widgets/langkap_linguistik_card.dart';

class LangkapLinguistikScreen extends StatelessWidget {
  const LangkapLinguistikScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Lanskap Linguistik',
          style: AppText.madaStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.blue7,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          LangkapLinguistikCard(
            title: 'Kategori Bahasa',
            subTitle: 'Selidiki bahasa yang umum digunakan di daerah tersebut.',
          ),
          LangkapLinguistikCard(
            title: 'Monolingual dan Multilingual',
            subTitle: 'Kenali variasi penggunaan bahasa di daerah tersebut.',
          ),
          LangkapLinguistikCard(
            title: 'Daring dan Fisik',
            subTitle: 'Eksplorasi bahasa daring dan fisik di daerah tersebut.',
          ),
        ],
      ),
    );
  }
}
