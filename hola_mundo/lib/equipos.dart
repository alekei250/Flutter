
import 'package:flutter/material.dart';

class Equipo {
  final String nombre;
  final String imagen;

  Equipo({required this.nombre, required this.imagen});
}

class EquiposApp extends StatelessWidget {
  final List<Equipo> equipos;

  EquiposApp({required this.equipos});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Equipos Participantes'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
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