import 'package:flutter/material.dart';
import 'package:examen_1062/pagina_inicial.dart';
import 'package:examen_1062/pagina_aboutdialog.dart';
import 'package:examen_1062/pagina_choicechip.dart';
import 'package:examen_1062/pagina_flexible.dart';
import 'package:examen_1062/pagina_animated_padding.dart';
import 'package:examen_1062/pagina_align.dart';
import 'package:examen_1062/pagina_constrained_box.dart';
import 'package:examen_1062/pagina_inherited_notifier.dart';
import 'package:examen_1062/pagina_animated_builder.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const Pagina_aboutdialog(),
        '/pantalla3': (context) => const Pagina_choicechip(),
        '/pantalla4': (context) => const Pagina_flexible(),
        '/pantalla5': (context) => const Pagina_animated_padding(),
        '/pantalla6': (context) => const Pagina_align(),
        '/pantalla7': (context) => const Pagina_constrained_box(),
        '/pantalla8': (context) => const Pagina_inherited_notifier(),
        '/pantalla9': (context) => const Pagina_animated_builder(),
      },
    );
  }
}
