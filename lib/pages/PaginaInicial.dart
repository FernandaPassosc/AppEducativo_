import 'dart:io';

import 'package:flutter/material.dart';

import 'PaginaA.dart';

import 'Pagina1.dart';


class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  void _abrirA() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaA())
    );
  }
  void _abrir1() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Pagina1())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogos Educativos"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Para acessar os jogos clique nas imagens"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirA,
                    child: Image.asset("assets/abc.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrir1, //deve ser criada a função e página e alterado
                    child: Image.asset("assets/blocos-de-numeros.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
