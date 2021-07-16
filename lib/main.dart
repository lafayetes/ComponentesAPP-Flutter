import 'package:flutter/material.dart';

//import 'package:componentes_flutter/src/pages/home_temp.dart';
import 'package:componentes_flutter/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: HomePage(),
    );
  }
}