import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar alerta'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: const StadiumBorder(),
          ),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true, //salir si se da clic en lo obscuro
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: Text("Hola"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("este es el contenido"),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancel')),
              TextButton(onPressed: () {}, 
              child: Text('OK'))
            ],
          );
        });
  }
}
