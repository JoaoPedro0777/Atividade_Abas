import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Atividade(),
    );
  }
}

class Atividade extends StatelessWidget {
  const Atividade({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/perfil.jpeg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Renam "Legigay" Nunes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email, size: 30),
                const Text(' renam.legigay@email.com'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.phone, size: 30),
                const Text(' (11) 99999-9999'),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Você agora segue este perfil!')),
                );
                // Ação ao pressionar o botão
              },
              child: const Text('Seguir'),
            ),
          ],
        ),
      ),
    );
  } // Widget
} // class
