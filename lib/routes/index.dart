import 'package:flutter/cupertino.dart';
import 'package:myapp/views/lifeCycle.dart';
import 'package:myapp/views/routes.dart';
import 'package:myapp/views/tab.dart';

Map<String, WidgetBuilder> routes = {
  "route1": (context) => NewRoute(text: ModalRoute.of(context).settings.arguments),
  "route2": (context) => NewRoute(text: ModalRoute.of(context).settings.arguments),
  "/": (context) => TabBarRoute(),
  'state': (context) => CounterWidgeState(),
};
