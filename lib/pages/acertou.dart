
import 'package:flutter/material.dart';


class acertou extends StatefulWidget {
  @override
  _acertou createState() => _acertou();
}

class _acertou extends State<acertou> {

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
    return Scaffold(
      appBar: AppBar(
        title: Text("Voltar"),
      ),
      body: Column(
        children:[
          Image.asset(
            'assets/parabens.gif',
            width: 350,
            height: 350,
          )
        ],
      ),
      //),
    );
  }
}