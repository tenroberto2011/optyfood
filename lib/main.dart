import 'package:flutter/material.dart';

import 'package:mvc_application/mvc.dart' show App;

import 'package:optyfood/src/view.dart';

void main() => runApp(MyApp());

class MyApp extends App {
  @override
  createView() => OptyFoodLoginApp();
}