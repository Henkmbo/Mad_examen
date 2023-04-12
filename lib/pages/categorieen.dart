import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../components/searchbar.dart';

class Categorieen extends StatefulWidget {
  const Categorieen({super.key});

  @override
  State<Categorieen> createState() => _CategorieenState();
}

class _CategorieenState extends State<Categorieen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorieen'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchInput(),
          Container(
            child: ElevatedButton(onPressed: () {}, child: Text('Sport')),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(20.0),
            width: 200,
          ),
          Container(
            child: ElevatedButton(onPressed: () {}, child: Text('Buitenland')),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(20.0),
            width: 200,
          ),
          Container(
            child: ElevatedButton(onPressed: () {}, child: Text('Gaming')),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(20.0),
            width: 200,
          ),
          Container(
            child: ElevatedButton(onPressed: () {}, child: Text('Wetenschap')),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(20.0),
            width: 200,
          ),
          Container(
            child: ElevatedButton(onPressed: () {}, child: Text('Politiek')),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(20.0),
            width: 200,
          ),
        ],
      ),
    );
  }
}
