import 'package:flutter/material.dart';
import './pages/Artikelpage.dart';
import './pages/overviewpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const Overviewpage(),
      ),
    );
  }
}
