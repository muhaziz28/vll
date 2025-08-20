import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/profile/ui/widgets/profile_action.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue0,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bayu Man',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.blue15,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/user_image.png'),
                    backgroundColor: Colors.grey[200],
                    onBackgroundImageError: (exception, stackTrace) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Text(
              'Profile actions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),
            ProfileAction(
              image: 'assets/icon_person_black.png',
              label: "Profile",
            ),
            ProfileAction(image: 'assets/icon_person_black.png', label: "Peta"),
            ProfileAction(
              image: 'assets/icon_person_black.png',
              label: "Event",
            ),
            ProfileAction(
              image: 'assets/icon_person_black.png',
              label: "Notifikasi",
            ),
            ProfileAction(
              image: 'assets/icon_person_black.png',
              label: "Eksplor",
            ),
            ProfileAction(image: 'assets/icon_person_black.png', label: "Help"),
          ],
        ),
      ),
    );
  }
}
