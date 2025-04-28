import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  bool selected = false;
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
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Colors.blueGrey : Colors.white,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
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
