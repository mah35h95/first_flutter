import 'package:first_flutter/pages/choose_location.dart';
import 'package:first_flutter/pages/home.dart';
import 'package:first_flutter/pages/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
      routes: {
        '/': (context) => const Loading(),
        '/home':(context) => const Home(),
        '/location':(context) => const ChooseLocation(),
      },
    ));