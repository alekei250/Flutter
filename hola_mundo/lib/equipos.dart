import 'package:flutter/material.dart';

class Equipo {
  final String nombre;
  final String imagen;

  Equipo({required this.nombre, required this.imagen});
}

class MyApp extends StatelessWidget {
  final List<Equipo> equipos = [
    Equipo(nombre: 'Equipo 1', imagen: 'assets/america.png'),
    Equipo(nombre: 'Equipo 2', imagen: 'assets/atlas.png'),
    Equipo(nombre: 'Equipo 3', imagen: 'assets/atleticosl.png'),
    Equipo(nombre: 'Equipo 4', imagen: 'assets/cruzazul.png'),
    Equipo(nombre: 'Equipo 5', imagen: 'assets/guadalajara.png'),
    Equipo(nombre: 'Equipo 6', imagen: 'assets/juarez.png'),
    Equipo(nombre: 'Equipo 7', imagen: 'assets/leon.png'),
    Equipo(nombre: 'Equipo 8', imagen: 'assets/mazatlan.png'),
    Equipo(nombre: 'Equipo 9', imagen: 'assets/monterrey.png'),
    Equipo(nombre: 'Equipo 10', imagen: 'assets/necaxa.png'),
    Equipo(nombre: 'Equipo 11', imagen: 'assets/pachuca.png'),
    Equipo(nombre: 'Equipo 12', imagen: 'assets/puebla.png'),
    Equipo(nombre: 'Equipo 13', imagen: 'assets/pumas.png'),
    Equipo(nombre: 'Equipo 14', imagen: 'assets/queretaro.png'),
    Equipo(nombre: 'Equipo 15', imagen: 'assets/santos.png'),
    Equipo(nombre: 'Equipo 16', imagen: 'assets/tigres.png'),
    Equipo(nombre: 'Equipo 17', imagen: 'assets/tijuana.png'),
    Equipo(nombre: 'Equipo 18', imagen: 'assets/toluca.png'),
    // Agrega los demás equipos de acuerdo a tus necesidades
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Equipos Participantes'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                3, // Puedes ajustar la cantidad de columnas según tus necesidades
          ),
          itemCount: equipos.length,
          itemBuilder: (BuildContext context, int index) {
            return EquipoCard(equipo: equipos[index]);
          },
        ),
      ),
    );
  }
}

class EquipoCard extends StatelessWidget {
  final Equipo equipo;

  EquipoCard({required this.equipo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            equipo.imagen,
            width: 80,
            height: 80,
          ),
          SizedBox(height: 8),
          Text(equipo.nombre),
        ],
      ),
    );
  }
}
