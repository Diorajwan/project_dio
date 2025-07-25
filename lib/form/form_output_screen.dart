import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama;
  final String jk;
  final String tglLahir;
  final String agama;

  const OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tglLahir,
    required this.agama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBiodataRow(Icons.person, "Nama", nama),
                const Divider(),
                _buildBiodataRow(Icons.wc, "Jenis Kelamin", jk),
                const Divider(),
                _buildBiodataRow(Icons.cake, "Tanggal Lahir", tglLahir),
                const Divider(),
                _buildBiodataRow(Icons.account_balance, "Agama", agama),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBiodataRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            "$label: ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
