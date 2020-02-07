
import 'package:flutter/material.dart';

class PageTres extends StatelessWidget {
  final String p1 = "(ง︡'-'︠)ง";
  final String p2 = "(ㆆ_ㆆ)";
  final String p3 = "( ≖.≖)";
  PageTres({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 3"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(p1);
            },
            color: Colors.white60,
            child: Text(
              "$p1",
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(p2);
            },
            color: Colors.black,
            child: Text(
              "$p2",
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(p3);
            },
            color: Colors.white60,
            child: Text("$p3"),
          ),
        ],
      ),
    );
  }
}
