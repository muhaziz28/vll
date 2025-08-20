import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.blue0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.blue15,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/user_image.png'),
                  backgroundColor: Colors.grey[200],
                  onBackgroundImageError: (exception, stackTrace) {},
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                "Bayu Man",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 9),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(width: 9),
              const Text("6 hour ago"),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Baru pulang dari Kampung Cina! 🏮 Bangunannya indah banget, dengan arsitektur klasik dan warna-warna cerah. Suasana yang bikin betah! ',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            decoration: BoxDecoration(shape: BoxShape.rectangle),
            child: Image.asset('assets/discover_image_1.png', fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
