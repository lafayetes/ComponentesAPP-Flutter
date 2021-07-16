import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    // Aqui crearemos una variable que espere espere los datos del archivo jSON, Con el rotobundle almacenamos el string
    final resp = await rootBundle.loadString('data/menu_opts.json');
    // Aqui convertimso los datos que estan en String de resp a un mapa para poder facilitar su manejo
    Map dataMap = json.decode(resp);
    // Aqui almacenamos lo que requerimos del mapa en una variable de tipo lista dinamica
    opciones = dataMap['rutas'];
    // aqui devolvemos la lista dinamica con los datos ya guardados en la variable opciones
    return opciones;
  }
}

final menuProvider = _MenuProvider();
