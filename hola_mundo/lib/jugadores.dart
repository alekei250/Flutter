import 'package:flutter/material.dart';

class JugadoresApp extends StatelessWidget {
  final String equipo;

  JugadoresApp({required this.equipo});

  // Lista de rutas de imágenes, ajusta las rutas según la ubicación de tus imágenes
  final List<String> imagenes = [
    'assets/america.png',
    'assets/america.png',
    'assets/america.png',
    'assets/america.png',
    'assets/america.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jugadores de $equipo'),
      ),
      body: ListView.builder(
        itemCount: imagenes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              imagenes[index], // Ruta de la imagen
              width: 100,
              height: 100,
            ),
          );
        },
      ),
    );
  }
}