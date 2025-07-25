import 'package:flutter/material.dart';
import 'package:project_dio/main_layouts.dart'; 

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

  final List<ListItem> itemList = [
    ListItem(Colors.red, 'Partai Banteng'),
    ListItem(Colors.green, 'Partai Kabah'),
    ListItem(Colors.blue, 'Partai Joged'),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Separated',
      body: ListView.separated(
        itemCount: itemList.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 100,
            color: item.color,
            child: Center(
              child: Text(
                item.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // biar kontras dengan warna background
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
