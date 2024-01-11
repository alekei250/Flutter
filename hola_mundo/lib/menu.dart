import 'package:flutter/material.dart';
import 'package:hola_mundo/cronometro.dart';
import 'package:hola_mundo/equipos.dart';

class MenuPage extends StatelessWidget {
  final String username;

  MenuPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido, $username!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cronometro()),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                        'assets/crono.png'), // Ajusta la ruta de la imagen
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Equipo()),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                        'assets/boton2.png'), // Ajusta la ruta de la imagen
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Agrega la redirección para el tercer botón
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                        'assets/boton3.png'), // Ajusta la ruta de la imagen
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Agrega la redirección para el cuarto botón
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                        'assets/boton4.png'), // Ajusta la ruta de la imagen
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
