import 'package:flutter/material.dart';
import '../PaginaInicial.dart';



class Pagina10 extends StatefulWidget {
  @override
  _Pagina10 createState() => _Pagina10();
}

class _Pagina10 extends State<Pagina10> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numero 9"),
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
                    child: Image.asset("assets/10.png",
                      width: 350,
                      height: 350,
                    ),
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