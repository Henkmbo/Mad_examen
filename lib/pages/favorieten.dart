import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:straksnl/pages/Artikelpage.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorieten'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
              'https://www.rtlnieuws.nl/sites/default/files/content/images/2023/03/06/ANP-444577932.jpg?itok=CYCdvbtd&offsetX=0&offsetY=3&cropWidth=1279&cropHeight=719&width=1024&height=576&impolicy=dynamic'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                "Vermeende drugsbaron Piet S. ontkent: 'Ik was een soort scheidsrechter'",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.custom,
                  text: 'Alleen beschikbaar voor premium leden',
                  textTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                );
              },
              child: Text('Lees verder!')),
          Divider(
            color: Colors.black,
            height: 30,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
