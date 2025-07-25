import 'package:flutter/material.dart';
import 'detail_wisata_screen.dart'; // Pastikan path ini sesuai

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Gunung Gede",
      "kota": "Bandung",
      "image": "images/gunung-gede.jpg",
      "deskripsi":
          "Gunung Gede adalah salah satu gunung tertinggi di Indonesia",
    },
    {
      "nama": "Gunung Putri",
      "kota": "Bandung",
      "image": "images/Gunung-Putri.jpg",
      "deskripsi":
          "Gunung Putri adalah salah satu gunung yang terletak di Jawa Barat",
    },
    {
      "nama": "Karang Papak",
      "kota": "Garut",
      "image": "images/Pantai-Karangpapak-Cisolok-Sukabumi.jpg",
      "deskripsi":
          "Pantai Karang Papak adalah salah satu pantai yang terletak di Jawa Barat",
    },
    {
      "nama": "Puncak Guha",
      "kota": "Garut",
      "image": "images/Puncak-Guha-drone-view-PhotoRoom.jpg",
      "deskripsi":
          "Puncak Guha adalah salah satu gunung yang terletak di Jawa Barat",
    },
    {
      "nama": "Sunan Ibu",
      "kota": "Ciwidey",
      "image": "images/sunan_ibu.jpeg",
      "deskripsi":
          "Sunan Ibu adalah salah satu tempat wisata yang terletak di Jawa Barat",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.red, Colors.orangeAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            final wisata = wisataData[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisata(
                      nama: wisata["nama"],
                      kota: wisata["kota"],
                      image: wisata["image"],
                      deskripsi: wisata["deskripsi"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(wisata["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Text(
                    "${wisata["nama"]} - ${wisata["kota"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
