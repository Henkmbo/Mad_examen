import 'package:flutter/material.dart';

import '../components/favourite.dart';

class ArtikelPage2 extends StatefulWidget {
  const ArtikelPage2({super.key});

  @override
  State<ArtikelPage2> createState() => _ArtikelPage2State();
}

class _ArtikelPage2State extends State<ArtikelPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Straks.nl'),
        ),
        body: Column(
          children: <Widget>[
            Image.network(
              'https://www.rtlnieuws.nl/sites/default/files/content/images/2023/01/17/ziekenhuis%20zorg.jpeg?itok=r6YNJsd8&width=1024&height=576&impolicy=semi_dynamic',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Zorgpersoneel met post-covid krijgt geen compensatie, oordeelt rechter",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Favourite(
                  isSelected: true,
                  normalColor: Colors.black,
                  selectedColor: Colors.red,
                ),
                IconButton(
                    icon: Icon(Icons.bookmark),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Artikel toegevoegt aan favorieten')));
                    }),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Mensen die hun baan in de zorg zijn kwijtgeraakt door langdurige en aanhoudende coronaklachten krijgen daar voorlopig geen geld voor. Vakbonden FNV en CNV hadden daar een kort geding voor aangespannen, maar de eis is afgewezen door de rechtbank in Den Haag.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bron: RTL Nieuws',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Image.network(
                  'https://www.wordstream.com/wp-content/uploads/2021/07/banner-ads-examples-ncino.jpg',
                  height: 200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
