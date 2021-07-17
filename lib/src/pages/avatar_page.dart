import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.la-razon.com/wp-content/uploads/2021/01/12/12/https___hypebeast.com_image_2020_11_disney-marvel-deadpool-3-molyneux-sisters-writers-001.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      body: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/f/f3/Deadpool%2C_Georgia_Viaduct%2C_Vancouver%2C_April_6_2015_-_3.jpg')),
    );
  }
}
