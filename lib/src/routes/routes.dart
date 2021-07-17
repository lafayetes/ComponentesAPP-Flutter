import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/pages/home_page.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/pages/avatar_page.dart';
import 'package:componentes_flutter/src/pages/card_page.dart';
import 'package:componentes_flutter/src/pages/animated_container.dart';
import 'package:componentes_flutter/src/pages/inputs_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    '/alert': (context) => AlertPage(),
    '/avatar': (context) => AvatarPage(),
    '/card': (context) => CardPage(),
    '/animatedContainer': (context) => AnimatedContainerPage(),
    '/inputs': (context) => InputPage(),
  };
}
