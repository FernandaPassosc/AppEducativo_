import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'guardar/PaginaH.dart';
import 'acertou.dart';
import 'errou.dart';

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
            Text("CA_AR",
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
                    child: Image.asset("assets/casamento.gif",
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
                            child: Image.asset('assets/s.png',
                                width: 110.0, height: 110.0),
                          ),),
                      )),

                  GestureDetector(
                      child: InkWell(
                        onTap: () {abrirErrou();},
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/z.png',
                                width: 110.0, height: 110.0),
                          ),),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}