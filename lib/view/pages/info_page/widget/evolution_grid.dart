import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';

class EvolutionGrid extends StatelessWidget {
  PokemonsController pokemonsController = Get.find();
  String evolution;
  EvolutionGrid({required this.evolution});

  @override
  Widget build(BuildContext context) {
    var index = pokemonsController.findPokemonId(evolution);
    var pokemon = pokemonsController.pokemonInfoList[index];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.network(
              pokemon.imageurl,
              width: 100,
            ),
            Text(pokemon.name),
            Container(child: Text(pokemon.reason)),
          ],
        ),
      ],
    );
  }
}
