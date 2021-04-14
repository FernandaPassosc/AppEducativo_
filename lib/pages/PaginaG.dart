import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'PaginaH.dart';

class PaginaG extends StatefulWidget {
  @override
  _PaginaG createState() => _PaginaG();
}

class _PaginaG extends State<PaginaG> {
  void _abrirH() {
    Navigator.push(
      context,
    MaterialPageRoute(
     builder: (context) => PaginaH())
     );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Letra F"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Letra G",
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
                    child: Image.asset("assets/g.png",
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
                    onTap: _abrirH, //deve ser criada a função e página e alterado
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