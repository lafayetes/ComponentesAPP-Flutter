import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:componentes_flutter/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // En esta parte del codigo creamos un future builder que nos permite almacenar data primero para luego utilizarla en nuestros widgets
    return FutureBuilder(
      //Esta opcion de future lo que hace es realizar la funcion que trabajara con future.
      future: menuProvider.cargarData(),
      // El initialData son los datos que tendra de inicio el futurebuilder
      initialData: [],
      //Aqui en el metodo builder se le envia el contexto y un snapshot que debe ser del tipo de datos que requerimos en nuestra funcion future que estamos trabajando. En este caso por ejemplo menuProvider.cargarData() es una lista dynamic entoncs justamente tendriamos que colocar ese tipo de dato.
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // Finalmente aqui confirmamos que estamos recibiendo la data y la imprimimos
        print('builder');
        print(snapshot.data);

        // Aqui ya podemos colocar el widget que necesitamos con la informacion que tiene del snapshot.
        return ListView(
          // Recibimos la data que tenemos almacenada con lo que sacamos del JSON
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    // Iniciamos la lista opciones
    final List<Widget> opciones = [];
    //Con el foreach iteraremos cada elemento de la lista data que tenemos
    data.forEach((opt) {
      //Creamos los elementos uno por uno
      final widgetTemp = ListTile(
        //Aqui almacenamos el titulo que llevara justamente el texto que tenemos en el json, por eso se coloca 'texto' puesto que asi lo tenemos almacenado en el JSON. Esto lo que haria es almacenar el primer elemento puesto que estamos iterando elemento por elemento. Entonces lo que obtendriamos como primer dato seria "Alertas", en la segunda iteracion "Avatars" y asi consecutivamente hasta llegar al final de la lista
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );
      //Aqui simplemente agregamos a nuestra lista opciones los ListTiles y un divider
      opciones..add(widgetTemp)..add(Divider());
    });
    // Retornamos la lista con los datos
    return opciones;
  }
}
