import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'Pagina9.dart';


class Pagina8 extends StatefulWidget {
  @override
  _Pagina8 createState() => _Pagina8();
}

class _Pagina8 extends State<Pagina8> {
  void _abrir9() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Pagina9())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numero 7"),
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
                    child: Image.asset("assets/8.png",
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
                    onTap: _abrir9, //deve ser criada a função e página e alterado
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