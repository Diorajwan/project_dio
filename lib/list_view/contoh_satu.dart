import 'package:flutter/material.dart';
import 'package:project_dio/main_layouts.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic',
      body: Column(
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.amber[100],
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amber[200],
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amber[300],
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amber[400],
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
              Container(
                color: Colors.amber[500],
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                child: FlutterLogo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
