import 'package:flutter/material.dart';

import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/inputs_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/notification_page.dart';
import 'package:componentes/src/pages/Animated_container.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    'alert': (context) => AlertPage(),
    'avatar': (context) => AvatarPage(),
    'notification': (context) => NotificationPage(),
    'card': (context) => CardPage(),
    'animatedConatiner': (context) => AnimatedContainerPage(),
    'inputs': (context) => InputPage()
  };
}
