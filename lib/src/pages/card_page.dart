import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),

        // En esta parte del codigo agregamos un metodo que devolvera un widget
        children: [
          _cardTipo1(),
          _cardTipo2(),
        ],
      ),
    );
  }

  // Aqui estaria el widget _cardTipo1 en el que se colocaria sus correspondientes propiedades
  Widget _cardTipo1() {
    //El widget de tipo Card te permite crear como su nombre lo dice una tarjeta que le da un estilo al componente que se desea realizar. Tiene varias propiedades pero en este se ultiza el child
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.looks),
            title: Text('Tarjeta'),
            subtitle: Text(
                'Aqui hay una pequeña descripcion sobre lo que tiene que llevar esta tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Ok'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Landscape_Arnisee-region.JPG/1200px-Landscape_Arnisee-region.JPG')),
          // Image(
          //   image: NetworkImage(
          //       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Landscape_Arnisee-region.JPG/1200px-Landscape_Arnisee-region.JPG'),
          // ),
          Text('Nose que colocar de titulo')
        ],
      ),
    );
  }
}
