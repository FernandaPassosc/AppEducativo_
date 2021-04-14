import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'PaginaF.dart';

class PaginaE extends StatefulWidget {
  @override
  _PaginaE createState() => _PaginaE();
}

class _PaginaE extends State<PaginaE> {
  void _abrirF() {
    Navigator.push(
      context,
    MaterialPageRoute(
     builder: (context) => PaginaF())
     );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Letra D"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Letra E",
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
                    child: Image.asset("assets/e.png",
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
                    onTap: _abrirF, //deve ser criada a função e página e alterado
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