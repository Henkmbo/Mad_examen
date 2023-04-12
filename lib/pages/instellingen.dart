import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../components/switch.dart';

class Instellingen extends StatefulWidget {
  const Instellingen({super.key});

  @override
  State<Instellingen> createState() => _InstellingenState();
}

class _InstellingenState extends State<Instellingen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instellingen'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Geluid',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SwitchExample(),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Meldingen',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SwitchExample(),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Dark mode',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SwitchExample(),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Doneer aan de ontwikkelaar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                CoolAlert.show(
                    context: context,
                    type: CoolAlertType.confirm,
                    text: 'De kosten van de premium zijn 5 euro per maand');
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
              },
              child: Text(
                'Koop premium',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.custom,
                  text:
                      "Telefoon: 06-12345678 \n\n Email: test@test.nl \n\n Adres: Teststraat 1, 1234 AB, Teststad ",
                );
              },
              child: Text(
                'Contact',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'Versie 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Image.network(
            'https://static.semrush.com/blog/uploads/media/c2/52/c2521160ece538cfdbfb218788caf9ea/mDWwN6GNJt_lE7-pGth6IXsdxvqVmPeaGHw-F_dHXiKN8p3FGgIVicwvbdShvLirF5slOvKUkxpfMkaVdne2a6do6vHWdLZSfy1i-lGmfZL9-FyS162K6P-QGbZbk1vKp9YjNSil%3Ds0.png',
            height: 100,
          )
        ],
      ),
    );
  }
}
