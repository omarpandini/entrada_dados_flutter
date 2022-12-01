// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EntradaSlider extends StatelessWidget {
  const EntradaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _escolha = 5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Slider(
              value: _escolha,
              min: 0,
              max: 10,
              label: _escolha.toString(),
              divisions: 20,
              //activeColor: Colors.red,
              // inactiveColor: Colors.amberAccent,
              onChanged: (value) {
                setState(() {
                  _escolha = value;
                  print('escolha ' + value.toString());
                });
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print('Opção escolhida: ' + _escolha.toString());
              },
              child: Text('Enviar'))
        ],
      ),
    );
  }
}
