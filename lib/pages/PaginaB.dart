import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'acertou.dart';
import 'errou.dart';
import 'PaginaC.dart';


class PaginaB extends StatefulWidget {
  @override
  _PaginaB createState() => _PaginaB();
}

class _PaginaB extends State<PaginaB> {
  void _abrirC() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaC())
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
            Text("OC_LOS",
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
                    child: Image.asset("assets/oculos.gif",
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
                        onTap: () {abrirErrou();},
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/o.png',
                                width: 110.0, height: 110.0),
                          ),),
                      )),
                  GestureDetector(
                      child: InkWell(
                        onTap: () {abrirAcertou();},
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/u.png',
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
                    onTap: _abrirC, //deve ser criada a função e página e alterado
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