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
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  // Aqui estaria el widget _cardTipo1 en el que se colocaria sus correspondientes propiedades
  Widget _cardTipo1() {
    //El widget de tipo Card te permite crear como su nombre lo dice una tarjeta que le da un estilo al componente que se desea realizar. Tiene varias propiedades pero en este se ultiza el child
    return Card(
      //Aqui agregamos un poco de estilo a la card, colocando elevacion y forma para darle mejor estilo
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
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
    //Aqui modificamos el card a un container para que la imagen s epueda adaptar a los bordes
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Landscape_Arnisee-region.JPG/1200px-Landscape_Arnisee-region.JPG'),
            fadeInDuration: Duration(milliseconds: 200),
            // Con esta propiedad de fit podemos hacer que la imagen se adapte al contenedor y asi evitar que los bordes de vayan fuera
            fit: BoxFit.cover,
            height: 300,
          ),

          // Image(
          //   image: NetworkImage(
          //       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Landscape_Arnisee-region.JPG/1200px-Landscape_Arnisee-region.JPG'),
          // ),
          Text('Nose que colocar de titulo')
        ],
      ),
    );
    return Container(
      //La decoracion te permite colocar diferentes propiedades para darle un estilo al container. Esta el border radius que te permite darle un borde en nuestro caso redondeado, un color, sombras, etc
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          //Para el box Shadow manejamos una lista de tipo BoxShadow que puede llevar las propiedades color, blurRadius, SpreadRadius y el offset. Este ultimo lo que hace es ubicar la sombra en base a las coordenadas que se colocan tomandolo como un plano cartesiano.
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 2.0,
                offset: Offset(
                  1,
                  5,
                ),
                spreadRadius: 2.0),
          ]),
      //Con este clipRRect se corta todo lo que se este saliendo de nuestro container dandole un borde circular
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
