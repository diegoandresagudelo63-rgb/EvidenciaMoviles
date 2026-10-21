import 'package:flutter/material.dart';

void main() {
  runApp(const MiPerfilApp());
}

class MiPerfilApp extends StatelessWidget {
  const MiPerfilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil de Aprendiz',
      home: const PerfilPantalla(),
    );
  }
}

class PerfilPantalla extends StatelessWidget {
  const PerfilPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi perfil'),
        backgroundColor: Colors.blue, // Color azul para la barra superior
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ícono de persona
            const Icon(
              Icons.people_outline,
              size: 60.0,
              color: Colors.green,
            ),
            const SizedBox(height: 20),

            // Texto con tu nombre
            const Text(
              '[Tu nombre]',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Texto con tu programa
            const Text(
              '[Tu programa]',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // Botón «Ver perfil»
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEDE7F6), // Tono morado claro
                foregroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Ver perfil'),
            ),
          ],
        ),
      ),
    );
  }
}