import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:straksnl/pages/Artikelpage.dart';
import 'package:straksnl/pages/categorieen.dart';
import 'package:straksnl/pages/favorieten.dart';
import 'package:straksnl/pages/instellingen.dart';
import '../components/searchbar.dart';
import './Artikelpage2.dart';

class Overviewpage extends StatelessWidget {
  const Overviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Straks.nl'),
        elevation: 0,
        centerTitle: true,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Straks.nl',
                style: TextStyle(
                  fontSize: 30,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(4.0, 4.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 8.0,
                        color: Colors.red),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Favorieten'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Favorites()),
                );
              },
            ),
            ListTile(
              title: const Text('Instellingen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Instellingen()),
                );
              },
            ),
            ListTile(
              title: const Text('Categorieen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Categorieen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ArtikelPage()),
                );
              }, // Image tapped
              child: Image.network(
                'https://www.rtlnieuws.nl/sites/default/files/content/images/2023/03/06/ANP-444577932.jpg?itok=CYCdvbtd&offsetX=0&offsetY=3&cropWidth=1279&cropHeight=719&width=1024&height=576&impolicy=dynamic',
                fit: BoxFit.cover, // Fixes border issues
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Vermeende drugsbaron Piet S. ontkent: \'Ik was een soort scheidsrechter\'',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, height: null),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ArtikelPage2()),
                );
              }, // Image tapped
              child: Image.network(
                'https://www.rtlnieuws.nl/sites/default/files/content/images/2023/01/17/ziekenhuis%20zorg.jpeg?itok=r6YNJsd8&width=1024&height=576&impolicy=semi_dynamic',
                fit: BoxFit.cover, // Fixes border issues
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Zorgpersoneel met post-covid krijgt geen compensatie, oordeelt rechter',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, height: null),
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
