import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'Pagina3.dart';


class Pagina2 extends StatefulWidget {
  @override
  _Pagina2 createState() => _Pagina2();
}

class _Pagina2 extends State<Pagina2> {
  void _abrir3() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Pagina3())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numero 1"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Conte os corações",
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
                    child: Image.asset("assets/2.png",
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
                    onTap: _abrir3, //deve ser criada a função e página e alterado
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