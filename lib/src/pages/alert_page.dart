import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Page'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: StadiumBorder(),
            ),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => _mostrarAlert(context),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.logout),
          onPressed: () {
            // Este Navigator permite volver a la ruta anterior cerrando esta pagina.
            Navigator.pop(context);
          },
        ));
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          // Este widget te permite mostrar una alerta, una ventana que te muestra un mensaje por encima de tu screen
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            // Como propiedades tiene title, content, actions, entre otras.
            title: Text('Titulo'),
            content: Column(
              //Con el mainAxisSize puedes colocar el tamaño que deseas colocar a la ventana que se abre
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            // La propiedad actions son los que van abajo del contenido, estos tienen que ser una lista de widgets, puedes colocar los que tu quieras
            actions: [
              TextButton(
                  // El navigator.of te permite cerrar alertas por medio de la funcion que se puede ver
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
            ],
          );
        });
  }
}
