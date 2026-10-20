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
      home: MainPage(),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: 'Informações sobre carros',
                ), // Tab
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: 'Informações sobre trânsito',
                ), // Tab
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'Informações sobre bicicletas',
                ), // Tab
              ],
            ),
            title: const Text('Exemplo do uso de Tabs'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
const MainPage({super.key});
@override
State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2; // Tela Info

  // Lista de telas que vão aparecer ao selecionar cada aba
  static const List<Widget> _pages = <Widget>[
    AgroPage(),
    BioPage(),
    InfoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo de uso de BottomNavigationBar"),
      ),
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture),
            label: "Técnico em Agropecuária",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.biotech),
            label: "Técnico em Biotecnologia",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: "Técnico em Informática",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

// --- Página de Agropecuária ---
class AgroPage extends StatelessWidget {
  const AgroPage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
      children: [
        Text('Técnico em Agropecuária', style: optionStyle),
        SizedBox(height: 20), // Espaço entre o texto e o ícone
        Icon(Icons.agriculture, size: 160, color: Colors.blue), // Ícone
      ],
    ); 
  }
}

// --- Página de Biotecnologia ---
class BioPage extends StatelessWidget {
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Técnico em Biotecnologia', style: optionStyle),
        SizedBox(height: 20),
        Icon(Icons.biotech, size: 160, color: Colors.blue),
      ],
    ); 
  }
}

// --- Página de Informática ---
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Técnico em Informática', style: optionStyle), // Erro ortográfico corrigido
        SizedBox(height: 20),
        Icon(Icons.computer, size: 160, color: Colors.blue),
      ],
    ); 
  }
}

