import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Page'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.logout),
          onPressed: () {
            // Este Navigator permite volver a la ruta anterior cerrando esta pagina.
            Navigator.pop(context);
          },
        ));
  }
}
