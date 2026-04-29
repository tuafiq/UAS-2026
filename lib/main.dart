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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Hijau dengan Lengkungan Putih
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  color: const Color(0xFF00B69F),
                ),
                Positioned(
                  bottom: -1,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // GridView untuk Icon Layanan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  // --- ICON AL-QURAN DI SINI ---
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F2F1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.menu_book_rounded,
                          color: Color(0xFF008E5B),
                          size: 28,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Al-Qur'an",
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF546E7A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.1), width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 
          children: [
            // 1. Beranda
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.home_filled, color: Color(0xFF008E5B), size: 28),
                SizedBox(height: 4),
                Text("Beranda", style: TextStyle(color: Color(0xFF008E5B), fontSize: 11)),
              ],
            ),
            // 2. Al-Quran
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.menu_book_rounded, color: Colors.grey, size: 28),
                SizedBox(height: 4),
                Text("Al-Quran", style: TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
            // 3. Artikel
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.article_outlined, color: Colors.grey, size: 28),
                SizedBox(height: 4),
                Text("Artikel", style: TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
            // 4. Kalender
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.calendar_month_outlined, color: Colors.grey, size: 28),
                SizedBox(height: 4),
                Text("Kalender", style: TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
            // 5. Pengaturan
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.settings_outlined, color: Colors.grey, size: 28),
                SizedBox(height: 4),
                Text("Pengaturan", style: TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
