// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  const CampoTexto({super.key});

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
  TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.all(32),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: 'Informe o seu nome'),
            // enabled: false,
            // maxLength: 5,
            style: TextStyle(fontSize: 20),
            controller: _controller1,
            // obscureText: true,  //campo senha
            onChanged: (value) {
              print('digitando ' + value);
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print('Valor do input: ' + _controller1.text);
            },
            child: Text('Enviar'))
      ],
    );
  }
}
