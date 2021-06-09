import 'package:flutter/material.dart';
import '../PaginaInicial.dart';


class PaginaZ extends StatefulWidget {
  @override
  _PaginaZ createState() => _PaginaZ();
}

class _PaginaZ extends State<PaginaZ> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Letra Y"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Letra Z",
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
                    child: Image.asset("assets/z.png",
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