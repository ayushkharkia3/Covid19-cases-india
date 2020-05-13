import 'package:flutter/material.dart';
import 'package:corona_monitor/pages/home.dart';
import 'package:corona_monitor/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  debugShowCheckedModeBanner: false,
  routes: {
    '/':(context) => Loading(),
    '/home': (context) => Home()
  },
));