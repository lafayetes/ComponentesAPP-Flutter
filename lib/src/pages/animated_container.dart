import 'package:flutter/material.dart';

import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.green;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(9.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        //Este container tiene de especial el hecho que cada que se modifican su forma, este es animado, por ello requiere que se coloque la propiedad de duration y opcionalmente se puede agregar la propiedad de curve para elegir una animacion de las que vienen pre hechas por flutter
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 500),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow_outlined),
        // Es una buena practica crear las funciones del onpressed o cualquier otra que requiera una funcion en metodos y no en funciones anonimas, asi tienes mejor manejo de codigo
        onPressed: _cambiarForma,
      ),
    );
  }

  // esta funcion es la que se encarga de modificar la forma del animated container
  void _cambiarForma() {
    // Este Random es de una libreria de dart que te permite generar numeros aleatorios
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
