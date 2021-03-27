import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

infoDialog(BuildContext context, title, content) {
  // popup IOS
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                print("cerrar popup ios");
                //Navigator.of(context).pop();
                Navigator.pop(context);
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  // popup Android
  if (Platform.isAndroid) {
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                print("cerrar popup Android");
                //Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
