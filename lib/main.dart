import 'package:flutter/material.dart';
import 'package:myapp/routes/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        initialRoute: '/',
        title: 'welcome to flutter',
        theme: new ThemeData(
          primaryColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        darkTheme: new ThemeData(
          primaryColor: Colors.black,
        ),
        routes: routes
        //   onGenerateRoute: (settings) {
        //     print(settings);
        //     return MaterialPageRoute(builder: (context) {
        //       String routeName = settings.name;
        //       if (true) return routes['$routeName'](context);
        //     });
        //   },
        );
  }
}
