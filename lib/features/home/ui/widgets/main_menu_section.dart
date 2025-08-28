import 'package:flutter/material.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/features/langkap_linguistik/ui/screens/langkap_linguistik_screen.dart';
import 'package:llv/features/peta/ui/screens/peta_screen.dart';

class MainMenuSection extends StatelessWidget {
  const MainMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PetaScreen()),
            ),
            child: Container(
              height: 148,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/bg_peta.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/icon_map.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Peta',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 68,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.blue4,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/bg_lancap.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/icon_game_stick.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Permainan',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LangkapLinguistikScreen()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 68,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.blue4,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/bg_lancap.png'),
                      fit: BoxFit.cover, // Tambahkan fit
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/icon_book.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Lanscap Linguistik',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}