import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'PaginaB.dart';

class PaginaA extends StatefulWidget {
  @override
  _PaginaA createState() => _PaginaA();
}

class _PaginaA extends State<PaginaA> {
  void _abrirB() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaB())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Inicial"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Letra A",
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
                    //onTap: _abrirSobreApp,
                      child: Image.asset("assets/letraA.png",
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
                    onTap: _abrirB, //deve ser criada a função e página e alterado
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
