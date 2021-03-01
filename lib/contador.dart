import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  final String color;
  final int contador;
  Contador({Key key, this.color, this.contador}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Center(
        child: Text("${widget.contador}"),
      ),      
    );
  }
}