import 'package:flutter/material.dart';
import 'package:project_dio/form/form_screen.dart';
import 'package:project_dio/list_view/latihan_list.dart';
import 'package:project_dio/list_view/wisata_screen.dart'; // hanya ini yang digunakan

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarForm(), // tampilan awal adalah WisataScreen
    );
  }
}

// Widget HelloFlutter ini masih ada, tapi tidak digunakan
// Bisa dihapus kalau memang tidak dipakai
class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Flutter',
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
