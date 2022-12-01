// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EntradaRadioButton extends StatelessWidget {
  const EntradaRadioButton({super.key});

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
  String _escolhaUsuario = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          RadioListTile(
            title: Text('Masculino'),
            value: 'M',
            groupValue: _escolhaUsuario,
            onChanged: (value) {
              setState(() {
                _escolhaUsuario = value.toString();
              });
            },
          ),

          RadioListTile(
            title: Text('Feminino'),
            value: 'F',
            groupValue: _escolhaUsuario,
            onChanged: (value) {
              setState(() {
                _escolhaUsuario = value.toString();
              });
            },
          ),
          ElevatedButton(
              onPressed: () {
                print('Escolha do sexo: ' + _escolhaUsuario.toString());
              },
              child: Text('Enviar'))
          // Text('Masculino'),
          // Radio(
          //   value: 'M',
          //   groupValue: _escolhaUsuario,
          //   onChanged: (value) {
          //     setState(() {
          //       _escolhaUsuario = value.toString();
          //       print('escolha ' + value.toString());
          //     });
          //   },
          // ),
          // Text('Feminino'),
          // Radio(
          //   value: 'F',
          //   groupValue: _escolhaUsuario,
          //   onChanged: (value) {
          //     setState(() {
          //       _escolhaUsuario = value.toString();
          //       print('escolha ' + value.toString());
          //     });
          //   },
          // ),
        ],
      ),
    );
  }
}
