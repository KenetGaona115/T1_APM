import 'dart:math';

import 'package:flutter/material.dart';

class PageDos extends StatefulWidget {
  PageDos({Key key}) : super(key: key);

  @override
  _PageDosState createState() => _PageDosState();
}

class _PageDosState extends State<PageDos> {
  int x = GenerateRandom();

  void showDisplay() {
    setState(() {
      x = GenerateRandom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.blue[500], Colors.white],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Pagina 2"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
                child: Text(
                  "Generar número random",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "$x",
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  showDisplay();
                },
                color: Colors.white,
                child: Text("Generar"),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(x.toString());
                },
                color: Colors.white,
                child: Text("Guardar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int GenerateRandom() {
  return new Random().nextInt(100000);
}

