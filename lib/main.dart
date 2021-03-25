import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: Builder(builder: (BuildContext context) => Column(children: [
            Text("Hola Mundo Flutter!!!",
                style: TextStyle(
                    color: Colors.deepOrange[900],
                    //backgroundColor: Colors.deepOrange[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold)
                //textDirection: TextDirection.ltr,
                ),
            //Image.network("https://images.freeimages.com/images/large-previews/ca1/scsi-hd-1626366.jpg", height: 100, width: 200,),
            //Image.asset('assets/img/1.jpg', height: 100, width: 200,),
            Image.asset(
              'assets/img/2.jpg',
              height: 100,
              width: 200,
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
            TextButton.icon(
              icon: Icon(Icons.save, color: Colors.deepOrange[900], semanticLabel: "Guardar",),
              label: Text('Guardar', style: TextStyle(
                    color: Colors.deepOrange[900],
                    //backgroundColor: Colors.deepOrange[900],
                    fontSize: 14,
                    fontWeight: FontWeight.bold) ),
              onPressed: () {
                print("abrir popup");
                _showMyDialog(context);
              },
            )
          ]),
        ),
      ),
    );
  }
}


Future<void> _showMyDialog(context) async {
  showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Contacto!!!'),
        content: Text("Aqui puedes contactarme"),
        actions: <Widget>[
          TextButton(
            child: Text('Approve'),
            onPressed: () {
              print("cerrar popup");
              //Navigator.of(context).pop();
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}