import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EntradaCheckbox extends StatelessWidget {
  const EntradaCheckbox({super.key});

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
  bool _estaSelecionadoBr = false;
  bool _estaSelecionadoMx = false;
  String _texto = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text('Tipos de Comida'),
          // Checkbox(
          //   value: _estaSelecionado,
          //   onChanged: (value) {
          //     setState(() {
          //       _estaSelecionado = value == true ? true : false;
          //       print('object ' + _estaSelecionado.toString());
          //     });
          //   },
          // )
          CheckboxListTile(
            title: Text('Comida Brasileira'),
            subtitle: Text('Arroz;Feijão;etc..'),
            // activeColor: Colors.amber,
            secondary: Icon(Icons.add_box),
            // selected: true,
            value: _estaSelecionadoBr,
            onChanged: (value) {
              setState(() {
                _estaSelecionadoBr = value == true ? true : false;
              });
            },
          ),

          CheckboxListTile(
            title: Text('Comida Mexicana'),
            subtitle: Text('Nacho;Quesadila;etc..'),
            secondary: Icon(Icons.add_box),
            value: _estaSelecionadoMx,
            onChanged: (value) {
              setState(() {
                _estaSelecionadoMx = value == true ? true : false;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!_estaSelecionadoBr && !_estaSelecionadoMx) {
                          _texto = 'Nenhuma Comida foi Selecionada';
                        } else if (_estaSelecionadoBr && _estaSelecionadoMx) {
                          _texto =
                              'A(s) comida(s) Brasileira e Mexicana foram selecionadas';
                        } else {
                          _texto = 'A comida ';
                          if (_estaSelecionadoBr) {
                            _texto += ' Brasileira ';
                          }
                          if (_estaSelecionadoMx) {
                            _texto += ' Mexicana ';
                          }
                          _texto += 'foi selecionada';
                        }
                        print(_texto);
                      });
                    },
                    child: Text('Enviar'))),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(_texto),
          )
        ],
      ),
    );
  }
}
