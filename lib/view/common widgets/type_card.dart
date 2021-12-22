import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';

class TypeCard extends StatelessWidget {
  PokemonsController pokemonsController = Get.find();

  TypeCard({Key? key, required this.typeofpokemon})
      : super(key: key);

  final String typeofpokemon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          color: pokemonsController.typeColor(typeofpokemon),
          child: Text(
            typeofpokemon,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          )),
    );
  }
}
