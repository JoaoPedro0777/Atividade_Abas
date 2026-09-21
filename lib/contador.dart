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
      home: CounterPageV4(),
    );
  }
}

class CounterPageV1 extends StatelessWidget {
  const CounterPageV1({super.key});
  @override
  Widget build(BuildContext context) {
    // O Scaffold é a estrutura da tela.
    return Scaffold(
      appBar: AppBar(title: const Text('Contador')),
      body: const Center(child: Text('Você pressionou o botão')),
    );
  } // widget
} // class

class CounterPageV2 extends StatelessWidget {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contador de Pessoas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você pressionou o botão este número de vezes:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  } // Widget
} // class

class CounterPageV3 extends StatelessWidget {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // O Scaffold é a estrutura da tela.
      appBar: AppBar(title: const Text('Contador de Pessoas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você pressionou o botão este número de vezes:'), // Text
            Text(
              '$_counter', // Exibe o valor da variável _counter.
              style: Theme.of(context).textTheme.headlineMedium,
            ), // Text
          ], // <Widget>[]
        ), // Column
      ), // Center
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        //onPressed: _incrementCounter
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ), // FloatingActionButton
    ); // Scaffold
  } // Widget
} // class

class CounterPageV4 extends StatefulWidget {
  const CounterPageV4({super.key});
  @override
  State<CounterPageV4> createState() => _CounterPageState();
}

// A classe que contém o estado e a lógica do app.
class _CounterPageState extends State<CounterPageV4> {
  // Variável de instância privada que armazenará a contagem.
  int _counter = 1000;
  // Método em Dart que incrementa a contagem.
  void _incrementCounter() {
    // setStateé um método do Flutterque informa que
    // o estado mudou e que a interface deve ser redesenhada.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // O Scaffold é a estrutura da tela.
      appBar: AppBar(title: const Text('Contador de Pessoas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você pressionou o botão este número de vezes:'), // Text
            Text(
              '$_counter', // Exibe o valor da variável _counter.
              style: Theme.of(context).textTheme.headlineMedium,
            ), // Text
          ], // <Widget>[]
        ), // Column
      ), // Center
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        //onPressed: _incrementCounter
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ), // FloatingActionButton
    ); // Scaffold
  } // Widget
}
