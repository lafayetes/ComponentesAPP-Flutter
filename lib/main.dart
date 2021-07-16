import 'package:flutter/material.dart';

//import 'package:componentes_flutter/src/pages/home_temp.dart';
import 'package:componentes_flutter/src/routes/routes.dart';

import 'package:componentes_flutter/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Componentes App',
        initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (settings) {
          print({'Ruta llamada ${settings.name}'});
          return MaterialPageRoute(builder: (context) => AlertPage());
        });
  }
}
