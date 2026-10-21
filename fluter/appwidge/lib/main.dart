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
        backgroundColor: Colors.blue, 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.people_outline,
              size: 60.0,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              'Diego',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            
            const Text(
              'Ingeniería de Software',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEDE7F6), 
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