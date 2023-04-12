import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:straksnl/components/popup.dart';

import '../components/favourite.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Straks.nl'),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            'https://www.rtlnieuws.nl/sites/default/files/content/images/2023/03/06/ANP-444577932.jpg?itok=CYCdvbtd&offsetX=0&offsetY=3&cropWidth=1279&cropHeight=719&width=1024&height=576&impolicy=dynamic',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Vermeende drugsbaron Piet S. ontkent: 'Ik was een soort scheidsrechter'",
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
              'Het Openbaar Ministerie verdenkt de man, die ook wel bekendstaat als Dikke Piet, onder meer van drugssmokkel en het witwassen van de verdiensten hiervan. Het zou hierbij gaan om cocaïne en heroïne en synthetische drugs. Justitie wil tientallen miljoenen euros aan criminele verdiensten afpakken, dat geld zou zijn gaan zitten in bijvoorbeeld luxe autos en horloges.',
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
          IconButton(
              icon: Icon(Icons.share),
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
              }),
          Container(
            child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Image.network(
                'https://storage.googleapis.com/website-production/uploads/2023/01/new-yorker-banner-ad-.png',
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
