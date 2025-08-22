import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:llv/core/colors.dart';
import 'package:llv/core/text.dart';

class PetaScreen extends StatefulWidget {
  const PetaScreen({super.key});

  @override
  State<PetaScreen> createState() => _PetaScreenState();
}

class _PetaScreenState extends State<PetaScreen> {
  final List<String> cities = [
    'Kota Padang',
    'Kota Bukittinggi',
    'Kota Padang Panjang',
    'Kota Sawahlunto',
    'Kota Solok',
    'Kota Payakumbuh',
    'Kota Pariaman',
    'Kabupaten Padang Pariaman',
    'Kabupaten Agam',
    'Kabupaten Lima Puluh Kota',
    'Kabupaten Pasaman',
    'Kabupaten Solok Selatan',
    'Kabupaten Dharmasraya',
    'Kabupaten Sijunjung',
    'Kabupaten Tanah Datar',
    'Kabupaten Pesisir Selatan',
    'Kabupaten Mentawai',
    'Kabupaten Kepulauan Mentawai',
  ];

  String selectedCity = 'Kota Padang';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () => _showCityBottomSheet(context),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.chevron_down,
                color: AppColors.blue7,
                size: 15,
              ),
              const SizedBox(width: 8),
              Text(
                selectedCity,
                style: AppText.madaStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blue7,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(CupertinoIcons.back, color: AppColors.blue7),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(-0.947, 100.354),
            initialZoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.llv',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan bottom sheet dengan daftar kota
  void _showCityBottomSheet(BuildContext context) {
    List<String> filteredCities = List.from(cities);
    TextEditingController searchController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: AppColors.blue7),
                      hintText: 'Cari kabupaten/kota...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        filteredCities = cities
                            .where(
                              (city) => city.toLowerCase().contains(
                                value.toLowerCase(),
                              ),
                            )
                            .toList();
                      });
                    },
                  ),
                  const SizedBox(height: 16),

                  // Daftar Kota
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredCities.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            filteredCities[index],
                            style: AppText.madaStyle.copyWith(
                              fontSize: 16,
                              color: AppColors.blue7,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedCity = filteredCities[index];
                            });
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
