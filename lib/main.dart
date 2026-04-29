import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuranApp());
}

class MyQuranApp extends StatelessWidget {
  const MyQuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CleanLayout(),
    );
  }
}

class CleanLayout extends StatelessWidget {
  const CleanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Area bawah dominan putih
      body: Column(
        children: [
          // Bagian Atas: Background Hijau dengan lengkungan putih di bawahnya
          Stack(
            children: [
              // Bidang Hijau Utama
              Container(
                height: 350,
                width: double.infinity,
                color: const Color(0xFF00B69F), // Hijau NU Online
              ),
              // Bidang Putih yang membentuk lengkungan (Kubah)
              Positioned(
                bottom: -1, // Menutup celah pixel
                left: 0,
                right: 0,
                child: Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100), // Lengkungan besar kiri
                      topRight: Radius.circular(100), // Lengkungan besar kanan
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          // Bagian Bawah (Body) sudah otomatis putih karena background Scaffold
          const Expanded(
            child: SizedBox(), 
          ),
        ],
      ),
      
      // Bottom Navigation Bar with Beranda Icon
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.1), width: 1),
          ),
        ),
        child: Row(
          children: [
            // --- BAGIAN ICON BERANDA + TEKS ---
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 61, 63, 62), // Warna hijau Al-Qur'an
                    size: 28,
                  ),
                  SizedBox(height: 4), // Jarak antara icon dan teks
                  Text(
                    "Beranda",
                    style: TextStyle(
                      color: Color.fromARGB(255, 61, 63, 62), // Warna teks sama dengan icon
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            // --- ICON AL-QURAN + TEKS ---
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.menu_book_rounded, // Icon buku/Al-Quran
                    color: Colors.grey, // Warna default (belum aktif)
                    size: 28,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Al-Quran",
                    style: TextStyle(
                      color: Colors.grey, // Warna teks abu-abu
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // ----------------------------------
            
            // Sisa area kosong (3 SizedBox tersisa)
            const Expanded(child: SizedBox()),
            const Expanded(child: SizedBox()),
            const Expanded(child: SizedBox()),
            const Expanded(child: SizedBox()),
            const Expanded(child: SizedBox()),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}