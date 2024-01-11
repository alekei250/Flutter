import 'package:flutter/material.dart';

class FormularioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar Contraseña'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¿Olvidaste tu contraseña?',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Selecciona una opción para recuperar tu contraseña:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Opción 1: Enviar correo electrónico
                // Coloca aquí la lógica real para enviar un correo electrónico de recuperación
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Correo electrónico enviado')),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Enviar correo electrónico'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Opción 2: Preguntas de seguridad
                // Coloca aquí la lógica real para preguntas de seguridad
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Preguntas de seguridad')),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Preguntas de seguridad'),
            ),
          ],
        ),
      ),
    );
  }
}
