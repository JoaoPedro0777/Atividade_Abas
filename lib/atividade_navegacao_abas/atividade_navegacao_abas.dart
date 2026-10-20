import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Simples',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NavegacaoAbasScreen(),
    );
  }
}

class NavegacaoAbasScreen extends StatefulWidget {
  @override
  _NavegacaoAbasScreenState createState() => _NavegacaoAbasScreenState();
}

class _NavegacaoAbasScreenState extends State<NavegacaoAbasScreen> {
  int _indiceAtual = 0;
  
  final List<Widget> _telas = [
    const TelaInicio(),   
    const TelaNoticias(), 
    const TelaPerfil(),   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App com Abas")),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.blue), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.list, color: Colors.green), label: "Notícias"),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.red), label: "Perfil"),
        ],
      ),
    );
  }
}

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Bem-vindo ao App!",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          
          const FlutterLogo(size: 120), 
        ],
      ),
    );
  }
}

class TelaNoticias extends StatelessWidget {
  const TelaNoticias({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> manchetes = [
      "Nova versão do Flutter é lançada",
      "5 dicas para melhorar seu código Dart",
      "Como usar o ListView na prática",
      "O futuro do desenvolvimento Mobile",
      "Entendendo o StatefulWidget"
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: const Icon(Icons.article, color: Colors.green, size: 30),
            title: Text(
              manchetes[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Publicado há ${index + 1} horas"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        );
      },
    );
  }
}

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/images/perfil.jpeg'), 
          ),
          SizedBox(height: 24),
          Text(
            "Nome do Usuário",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "desenvolvedor@email.com",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}