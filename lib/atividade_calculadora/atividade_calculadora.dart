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
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  double _num1 = 0;
  double _num2 = 0;
  double _resultado = 0;

  void _somar() {
    setState(() {
      _resultado = _num1 + _num2;
    });
  }

  void _subtrair() {
    setState(() {
      _resultado = _num1 - _num2;
    });
  }

  void _multiplicar() {
    setState(() {
      _resultado = _num1 * _num2;
    });
  }

  void _dividir() {
    setState(() {
      if (_num2 != 0) {
        _resultado = _num1 / _num2;
      } else {
        // Evitar divisão por zero
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Não é possível dividir por zero!')),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora Simples')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Número 1'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _num1 = double.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Número 2'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _num2 = double.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(onPressed: _somar, child: const Text('+')),
                ElevatedButton(onPressed: _subtrair, child: const Text('-')),
                ElevatedButton(onPressed: _multiplicar, child: const Text('*')),
                ElevatedButton(onPressed: _dividir, child: const Text('/')),
              ],
            ),
            const SizedBox(height: 20),
            Text('Resultado: $_resultado', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
