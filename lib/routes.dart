import 'package:flutter/material.dart';
import 'Home.dart';
import 'About.dart';
import 'def/Def.dart';
import 'def/RowColumn.dart';
import 'def/BoxCon.dart';
import 'def/ConDs.dart';
import 'def/Con2.dart';


//Java Map ( HashMap Key, Value )
final Map<String, WidgetBuilder> routes = {
  '/home':  (context) => Home(),
  '/about': (context) => About(),
  '/def': (context) => Def(),
  '/rowColumn': (context) => RowColumn(),
  '/boxcon': (context) => BoxCon(),
  '/con2': (context) => Con2(),



  '/conds': (context) => ConDs(),
};