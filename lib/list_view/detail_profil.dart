import 'package:flutter/material.dart';

class DetailProfil extends StatelessWidget {
  final String nama;
  final String gender;
  final String foto;
  final int noPunggung;
  final int trofiBersamaPersib;
  final String bio;
  final String zodiac;

  const DetailProfil({
    super.key,
    required this.nama,
    required this.gender,
    required this.foto,
    required this.noPunggung,
    required this.trofiBersamaPersib,
    required this.bio,
    required this.zodiac,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: const Color.fromARGB(255, 55, 18, 190),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(foto),
            ),
            const SizedBox(height: 20),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Gender: $gender",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              "Nomor Punggung: $noPunggung",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              "Trofi Bersama Persib: $trofiBersamaPersib",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              "Zodiak: $zodiac",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              "Tentang Pemain:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              bio,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
