import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'PaginaD.dart';
import 'acertou.dart';
import 'errou.dart';


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
            Text("VO_E",
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
                    child: Image.asset("assets/voce.gif",
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
