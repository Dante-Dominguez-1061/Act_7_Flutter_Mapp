import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Fondo azul del AppBar
        title: const Center(
          // Centra el texto
          child: Text(
            'Pantalla 2',
            style: TextStyle(
              color: Colors.black, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Flutter App',
              applicationVersion: 'version 1.0.0',
              aboutBoxChildren: [
                Text('This is a text created by Flutter Mapp'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla Inicial!'),
            ),
          ),
        ],
      ),
    );
  }
}
