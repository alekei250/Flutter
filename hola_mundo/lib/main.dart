import 'package:flutter/material.dart';
import 'package:hola_mundo/cronometro.dart';
import 'package:hola_mundo/formulario.dart';
import 'package:hola_mundo/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login with Time',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 253, 155, 143),
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false, // Oculta la tira roja de debug
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // Puedes agregar lógica de verificación de usuario y contraseña aquí.
    // En este caso, simplemente redirige al menú.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MenuPage(username: _usernameController.text),
      ),
    );
  }

  void _olvidasteContrasena() {
    // Redirige a la página de formulario cuando se olvida la contraseña
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormularioPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Color de la barra superior
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo dentro de un contenedor
            Container(
              width: 350, // Ajusta el ancho según tus necesidades
              height: 350, // Ajusta la altura según tus necesidades
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // Borde negro
              ),
              child: Image.asset(
                "assets/mexico.png", // Ajusta la ruta según la ubicación de tu imagen
                fit: BoxFit
                    .cover, // Ajusta la forma en que la imagen se ajusta al contenedor
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Usuario',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 8, 8, 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: _olvidasteContrasena,
              child: Text('¿Olvidaste la contraseña?'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnConstruccionPage()),
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
                      MaterialPageRoute(
                          builder: (context) => EnConstruccionPage()),
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
                      MaterialPageRoute(
                          builder: (context) => EnConstruccionPage()),
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
          ],
        ),
      ),
    );
  }
}

class CronometroPage extends StatelessWidget {
  final String username;

  CronometroPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cronómetro'),
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
            Cronometro(),
          ],
        ),
      ),
    );
  }
}
