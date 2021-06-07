import 'package:flutter/material.dart';
import 'package:flutter_app/pages/loading.dart';
import 'package:flutter_app/pages/location.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/new_home.dart';

// void main() { runApp(); }
void main() => runApp(MaterialApp(
    title: 'hack the world',
    initialRoute: '/home',
    routes: {
        '/': (context) => Loading(),
        '/home': (context) => NewHome(),
        '/location': (context) => Location(),
    },
));

