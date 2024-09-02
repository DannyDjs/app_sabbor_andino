import 'package:flutter/material.dart';
import 'package:sabbor_andino/screens/sign_in.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      backgroundColor: Colors.green[50], // Color de fondo opcional
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: isSmallScreen ? 150 : 250,
            ),
            SizedBox(height: 32), // Espacio entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de inicio de sesión
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen(
                            title: 'inicio sesion',
                          )),
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
