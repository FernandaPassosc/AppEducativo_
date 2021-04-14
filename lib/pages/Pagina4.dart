import 'package:flutter/material.dart';
import 'PaginaInicial.dart';
import 'Pagina5.dart';


class Pagina4 extends StatefulWidget {
  @override
  _Pagina4 createState() => _Pagina4();
}

class _Pagina4 extends State<Pagina4> {
  void _abrir5() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Pagina5())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numero 3"),
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
                    child: Image.asset("assets/4.png",
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
                    onTap: _abrir5, //deve ser criada a função e página e alterado
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