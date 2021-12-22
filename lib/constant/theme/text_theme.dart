import 'dart:ui';

import 'package:flutter/material.dart';

String primaryFont = 'RobotoCondensed';
// String pokemonSolid = 'PokemonSolid';
String pokemonHollow = 'PokemonHollow';
String nunito = 'Nunito';

class CustomTextThemes {
  TextStyle cardName =
      TextStyle(color: Colors.redAccent, fontSize: 20, fontFamily: nunito);
  TextStyle cardId = TextStyle(color: Colors.red[200], fontSize: 14);
  TextStyle type =
      TextStyle(color: Colors.white70, fontSize: 12, fontFamily: nunito);
  TextStyle stat = const TextStyle(fontSize: 20, color: Colors.grey);
}
