import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  final String text;

  NewRoute({
    @required this.text,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('route')),
      body: Center(child: Text('this is $text')),
    );
  }
}
