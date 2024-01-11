import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hola_mundo/main.dart';

class Cronometro extends StatefulWidget {
  @override
  _CronometroState createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  Stopwatch _stopwatch = Stopwatch();
  String _elapsedTime = '0:00:00';
  List<String> _registroTiempo = [];
  int _contadorTiempos = 1;

  void _startStopwatch() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime = _formatTime(_stopwatch.elapsedMilliseconds ~/ 1000);
      });
    });
  }

  String _formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$hours:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _detenerCronometro() {
    _stopwatch.stop();
    _registroTiempo.add('Time $_contadorTiempos: $_elapsedTime');
    _contadorTiempos++;
  }

  void _iniciarDetenerCronometro() {
    if (_stopwatch.isRunning) {
      _detenerCronometro();
    } else {
      _stopwatch.start();
    }
  }

  void _reiniciarCronometro() {
    _stopwatch.reset();
    setState(() {
      _elapsedTime = '0:00:00';
    });
  }

  void _cerrarSesion() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
      (Route<dynamic> route) => false,
    );
  }

  void _verRegistro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegistroPage(registroTiempo: _registroTiempo),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startStopwatch();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple, // Color del círculo
          ),
          child: Center(
            child: Text(
              _elapsedTime,
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: _iniciarDetenerCronometro,
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(_stopwatch.isRunning ? 'Detener' : 'Iniciar'),
            ),
            ElevatedButton(
              onPressed: _reiniciarCronometro,
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Reiniciar'),
            ),
            ElevatedButton(
              onPressed: _verRegistro,
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Registro'),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnConstruccionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Nube'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnConstruccionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Compartir'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnConstruccionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Imprimir'),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _cerrarSesion,
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text('Cerrar Sesión'),
        ),
      ],
    );
  }
}

class RegistroPage extends StatelessWidget {
  final List<String> registroTiempo;

  RegistroPage({required this.registroTiempo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Tiempos'),
        backgroundColor: Colors.black, // Cambia el color de la barra a negro
      ),
      body: ListView.builder(
        itemCount: registroTiempo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(registroTiempo[index]),
          );
        },
      ),
    );
  }
}

class EnConstruccionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('En Construcción'),
        backgroundColor: Colors.black, // Cambia el color de la barra a negro
      ),
      body: Center(
        child: Text(
          '¡EN CONSTRUCCIÓN!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
