import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Satu"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Real Madrid',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Logo di bawah judul
            Center(
              child: SizedBox(
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/id/thumb/5/56/Real_Madrid_CF.svg/800px-Real_Madrid_CF.svg.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Deskripsi singkat
            const Text(
              'Real Madrid adalah klub sepak bola profesional asal Spanyol yang bermarkas di Santiago Bernabéu, Madrid. Klub ini dikenal sebagai salah satu yang terbaik dan tersukses di dunia.',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            // Foto baris 1: 2 foto
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildImage(
                    'https://assets.goal.com/images/v3/bltf56a870d0233b058/new_santiago_bernabeu.jpg'),
                const SizedBox(width: 10),
                _buildImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJvTflGTsgJaTzczeycy4TseXMCIM2cVjS9Q&s'),
              ],
            ),

            const SizedBox(height: 10),

            // Foto baris 2: 3 foto (link baru)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildImage(
                    'https://img.inews.co.id/media/1200/files/inews_new/2022/03/21/real_madrid.jpg'),
                const SizedBox(width: 10),
                _buildImage(
                    'https://akcdn.detik.net.id/community/media/visual/2025/07/02/real-madrid-1751430198164.jpeg?w=600&q=90'),
                const SizedBox(width: 10),
                _buildImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSknD1s39OLToi7ngvjFwoHDeFTDhyXIO4TVg&s'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk gambar kecil
  static Widget _buildImage(String url) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
