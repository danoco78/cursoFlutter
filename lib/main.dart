import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:componente_01/helpers/dialogs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bienvenido a Flutter :)"),
          backgroundColor: Colors.deepOrange[900],
          //backgroundColor: Color.fromRGBO(213, 117, 45, 1),
        ),
        body: Builder(
          builder: (BuildContext context) => SingleChildScrollView(
            child: Container(
              //padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.deepOrange[900],
                        offset: Offset(3,
                            7) // los 2 numeros son posiciones en el plano cartesiano x, y pueden ser nagativos y positivos.
                        )
                  ],
                  border: Border.all(color: Colors.deepOrange[900])),
              child: Column(children: [
                Text("Hola Mundo Flutter!!!",
                    style: TextStyle(
                        color: Colors.deepOrange[900],
                        //backgroundColor: Colors.deepOrange[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold)
                    //textDirection: TextDirection.ltr,
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://images.freeimages.com/images/large-previews/ca1/scsi-hd-1626366.jpg",
                    height: 100,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/img/1.jpg',
                    height: 100,
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/img/2.jpg',
                    height: 100,
                    width: 200,
                  ),
                ),
                Text(
                  "Capitulo de componentes",
                  style: TextStyle(
                      color: Colors.deepOrange[700],
                      //backgroundColor: Colors.deepOrange[900],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  //textDirection: TextDirection.ltr,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Guardar',
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.deepOrange[900],
                      backgroundColor: Colors.grey,
                      textStyle:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.save,
                      color: Colors.deepOrange[900],
                      semanticLabel: "Guardar",
                    ),
                    label: Text('Guardar',
                        style: TextStyle(
                            color: Colors.deepOrange[900],
                            //backgroundColor: Colors.deepOrange[900],
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print("abrir popup");
                      _showMyDialog(context);
                    },
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(context) async {
  infoDialog(context, "Bienvenido!!!", "espero que aprendas mucho de flutter");
}
