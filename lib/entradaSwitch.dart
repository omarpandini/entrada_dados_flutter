// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EntradaSwitch extends StatelessWidget {
  const EntradaSwitch({super.key});

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
  bool _escolhaUsuario = false;
  bool _escolhaUsuario2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SwitchListTile(
            title: Text('Deseja receber notificações?'),
            secondary: Icon(Icons.notification_add),
            value: _escolhaUsuario,
            onChanged: (value) {
              setState(() {
                _escolhaUsuario = value == true ? true : false;
                print(value.toString());
              });
            },
          ),
          SwitchListTile(
            title: Text('Deseja carregar as imagens?'),
            secondary: Icon(Icons.image_outlined),
            value: _escolhaUsuario2,
            onChanged: (value) {
              setState(() {
                _escolhaUsuario2 = value == true ? true : false;
                print(value.toString());
              });
            },
          ),
          ElevatedButton(
              onPressed: () {
                print('Escolha 1 ' + _escolhaUsuario.toString());
                print('Escolha 2 ' + _escolhaUsuario2.toString());
              },
              child: Text('Enviar'))

          // Switch(
          //   value: _escolhaUsuario,
          //   onChanged: (value) {
          //     setState(() {
          //       _escolhaUsuario = value == true ? true : false;
          //       print(value.toString());
          //     });
          //   },
          // ),
          // Text('Receber Notificações')
        ],
      ),
    );
  }
}
