import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/logo.png'),
        Row(
          children: [
            Image.asset('assets/icon_person.png'),
            const SizedBox(width: 12),
            Image.asset('assets/icon_bell.png'),
          ],
        ),
      ],
    );
  }
}
