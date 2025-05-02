import 'package:flutter/material.dart';
import 'package:dominguezrutas/pagina_inicial.dart';
import 'package:dominguezrutas/pagina_dos.dart';
import 'package:dominguezrutas/pagina_tres.dart';
import 'package:dominguezrutas/pagina_cuatro.dart';
import 'package:dominguezrutas/pagina_cinco.dart';
import 'package:dominguezrutas/pagina_seis.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rutas entre paginas',
        initialRoute: '/',
        routes: {
          '/': (context) => const PantallaUno(),
          '/pantalla2': (context) => const PantallaDos(),
          '/pantalla3': (context) => const PantallaTres(),
          '/pantalla4': (context) => const PantallaCuatro(),
          '/pantalla5': (context) => const PantallaCinco(),
          '/pantalla6': (context) => const PantallaSeis()
        });
  }
}
