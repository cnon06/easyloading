
import 'package:flutter/material.dart';
import 'package:flutter_application_4/card_list_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CardListTile(),
    );
  }
}