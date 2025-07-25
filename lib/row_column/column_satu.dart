import 'package:flutter/material.dart';
import 'package:project_dio/main_layouts.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Widget Text 1'),
              Text('Widget Text 2'),
              Text('Widget Text 3'),
            ],
          )
        ],
      ),
    );
  }
}
