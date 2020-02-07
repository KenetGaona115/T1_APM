import 'package:flutter/material.dart';
import 'package:tarea_1/page_dos.dart';
import 'package:tarea_1/page_tres.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Tarea 1', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var x_2 = "";
  var x_3 = "";
  var x_p = "";

  _showAlertDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          TextEditingController _textController = TextEditingController();

          return AlertDialog(
            title: Text("Ingrese datos"),
            content: TextField(
              controller: _textController,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Ingrese palabra",
                hintText: "Palabra",
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                child: Text("Cancelar"),
                onPressed: () async {
                  Navigator.of(context).pop();
                },
              ),
              RaisedButton(
                child: Text("Aceptar"),
                onPressed: () {
                  x_p = _textController.text;
                  Navigator.of(context).pop();
                  navigateTo_2(ctx);
                },
              ),
            ],
          );
        });
  }

  navigateTo_3(BuildContext context) async {
    x_3 = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return PageTres();
      }),
    );
  }

  navigateTo_2(BuildContext context) async {
    x_2 = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return PageDos();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea 1"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                "BIENVENIDOS",
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: "Tipo_Letra",
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                    'assets/foto.png'), // con esto podemos añadir imagenes
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                // Este metodo es para que abarque toda la pantalla
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                    child: Text(
                      "Seleccione la acciona realizar",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            //metodo de alinecion sobre el eje de Axis
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  _showAlertDialog(context);
                }, // funcion para pagina 2
                color: Colors.blue,
                child: Text("Pagina 2", style: TextStyle(color: Colors.white)),
              ),
              MaterialButton(
                onPressed: () {
                  navigateTo_3(context);
                }, //funcion para pagina 3
                color: Colors.blue,
                child: Text("Pagina 3", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                // Este metodo es para que abarque toda la pantalla
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                    child: Text(
                      "Pagina 2 => $x_p$x_2",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                // Este metodo es para que abarque toda la pantalla
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                    child: Text(
                      "Pagina 3 => $x_3",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


