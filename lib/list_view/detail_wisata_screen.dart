import 'package:flutter/material.dart';
import 'package:project_dio/main_layouts.dart'; // Pastikan sudah diimport

class DetailWisata extends StatelessWidget {
  final String nama;
  final String kota;
  final String image;
  final String deskripsi;

  DetailWisata({
    required this.nama,
    required this.kota,
    required this.image,
    required this.deskripsi,
  }); // ← Tambahkan titik koma di sini!

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(child: Text("$nama - $kota")),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 280,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(deskripsi),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
