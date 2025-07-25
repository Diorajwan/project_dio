import 'package:flutter/material.dart';
import 'package:project_dio/main_layouts.dart';

class ListViewTiga extends StatelessWidget {
  //data
  final List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  final List<String> partaiList = [
    'partai banteng',
    'partai joget',
    'partai Kabah'
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Contoh ListView Bulider',
        body: SizedBox(
          width: double.infinity,
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                width: 200,
                height: 300,
                color: colorList[index],
                child: Text(partaiList[index]),
              );
            },
          ),
        ));
  }
}
