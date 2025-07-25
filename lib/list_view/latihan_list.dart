import 'package:flutter/material.dart';
import 'detail_profil.dart'; // Ganti dengan file detail pemain kamu

class LatihanList extends StatelessWidget {
  LatihanList({super.key});

  final List<Map<String, dynamic>> daftarPemainPersib = [
    {
      "nama": "Marc Klok",
      "gender": "Laki-laki",
      "foto": "images/marc_klok.png",
      "noPunggung": 23,
      "trofiBersamaPersib": 1,
      "bio": "Gelandang kreatif Persib yang menjadi andalan lini tengah.",
      "zodiac": "Taurus",
    },
    {
      "nama": "David da Silva",
      "gender": "Laki-laki",
      "foto": "images/david.jfif",
      "noPunggung": 9,
      "trofiBersamaPersib": 0,
      "bio": "Striker asal Brasil yang haus gol dan tajam di kotak penalti.",
      "zodiac": "Sagittarius",
    },
    {
      "nama": "Febri Hariyadi",
      "gender": "Laki-laki",
      "foto": "images/febri.jpg",
      "noPunggung": 13,
      "trofiBersamaPersib": 1,
      "bio": "Pemain asli Bandung dengan kecepatan luar biasa di sisi sayap.",
      "zodiac": "Cancer",
    },
    {
      "nama": "Rachmat Irianto",
      "gender": "Laki-laki",
      "foto": "images/irianto.png",
      "noPunggung": 53,
      "trofiBersamaPersib": 0,
      "bio":
          "Bek serba bisa dengan kemampuan bertahan dan menyerang yang baik.",
      "zodiac": "Leo",
    },
    {
      "nama": "Teja Paku Alam",
      "gender": "Laki-laki",
      "foto": "images/teja.png",
      "noPunggung": 14,
      "trofiBersamaPersib": 1,
      "bio": "Kiper utama Persib dengan refleks dan penyelamatan gemilang.",
      "zodiac": "Pisces",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 18, 190),
      body: ListView.builder(
        itemCount: daftarPemainPersib.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final pemain = daftarPemainPersib[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                // Foto pemain
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(pemain["foto"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    pemain['nama'],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailProfil(
                          nama: pemain["nama"],
                          gender: pemain["gender"],
                          foto: pemain["foto"],
                          noPunggung: pemain["noPunggung"],
                          trofiBersamaPersib: pemain["trofiBersamaPersib"],
                          bio: pemain["bio"],
                          zodiac: pemain["zodiac"],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 8, 94, 121),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'detail',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
