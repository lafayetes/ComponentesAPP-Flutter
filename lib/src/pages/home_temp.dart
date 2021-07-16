import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

// Este metodo te permite crear los listTiles para el manejo del listView en flutter.
  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    // Aqui se coloca un for in, lo que hace es iterar en base a una lista. Por ejemplo: En este codigo tenemos la lista llamada op
    //opciones, este for la variable opt tomara los valores de la lista, por ejemplo la primer iteracion tendra el valor 'uno' y asi sucesivamente.

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('Hola gente'),
            leading: Icon(Icons.ac_unit_sharp),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
            hoverColor: Colors.blue,
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
