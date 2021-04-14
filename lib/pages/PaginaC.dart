import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'PaginaD.dart';

class PaginaC extends StatefulWidget {
  @override
  _PaginaC createState() => _PaginaC();
}

class _PaginaC extends State<PaginaC> {
  void _abrirD() {
    Navigator.push(
      context,
    MaterialPageRoute(
     builder: (context) => PaginaD())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Letra B"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Letra C",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("assets/c.png",
                      width: 350,
                      height: 350,
                    ),
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
                    onTap: _abrirD, //deve ser criada a função e página e alterado
                    child: Image.asset("assets/seta.png"),
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
