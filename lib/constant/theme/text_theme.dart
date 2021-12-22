import 'dart:ui';

import 'package:flutter/material.dart';

String primaryFont = 'RobotoCondensed';
// String pokemonSolid = 'PokemonSolid';
String pokemonHollow = 'PokemonHollow';
String nunito = 'Nunito';

class CustomTextThemes {
  TextStyle title = TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontFamily: pokemonHollow,
      letterSpacing: 2);
  TextStyle cardName = TextStyle(color: Colors.amber, fontSize: 20, fontFamily: nunito);
  TextStyle cardId = const TextStyle(color: Colors.red, fontSize: 14);
  TextStyle type = TextStyle(color: Colors.white70, fontSize: 12, fontFamily: nunito);
}
