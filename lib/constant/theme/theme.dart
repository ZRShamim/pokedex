import 'dart:ui';

import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
          color: Color(0xffDF362D),
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'PokemonHollow',
            fontWeight: FontWeight.bold,
            fontSize: 28
          )
        ),
    
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey[800],
    appBarTheme: const AppBarTheme(
          // color: Colors.blueGrey[800],
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'PokemonHollow',
            fontWeight: FontWeight.bold,
            fontSize: 28
          )
        )
  );
}
