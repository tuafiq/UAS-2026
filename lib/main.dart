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
      
      // Bottom Navigation Bar (Dibuat putih polos agar menyatu)
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.1), width: 1),
          ),
        ),
      ),
    );
  }
}