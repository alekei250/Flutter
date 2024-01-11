import 'package:flutter/material.dart';

class JugadoresApp extends StatelessWidget {
  final String equipo;

  JugadoresApp({required this.equipo});

  // Lista ficticia de jugadores, puedes obtenerla de tu modelo de datos o base de datos
  final List<String> jugadores = [
    'Jugador 1',
    'Jugador 2',
    'Jugador 3',
    'Jugador 4',
    'Jugador 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jugadores de $equipo'),
      ),
      body: ListView.builder(
        itemCount: jugadores.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jugadores[index]),
          );
        },
      ),
    );
  }
}
