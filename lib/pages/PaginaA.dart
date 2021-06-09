import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'PaginaB.dart';
import 'acertou.dart';
import 'errou.dart';


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

  void abrirAcertou() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => acertou())
    );
  }

  void abrirErrou(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => errou())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voltar"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("PIS_INA",
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
                    child: Image.asset("assets/piscina.gif",
                      width: 300,
                      height: 100,
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
                        child: InkWell(
                        onTap: () {abrirAcertou();},
                        child: Container(
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assets/c.png',
                        width: 110.0, height: 110.0),
                    ),),
            )),
                  GestureDetector(
                      child: InkWell(
                        onTap: () {abrirErrou();},
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/s.png',
                                width: 110.0, height: 110.0),
                          ),),
                      )),
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
