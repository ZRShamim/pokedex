import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/model/pokemon_info.dart';
import 'package:pokedex/view/pages/info_page/widget/evolution_grid.dart';

class EvolutionGridlayout extends StatelessWidget {
  PokemonsController pokemonInfo = Get.find();
  EvolutionGridlayout({required this.pokemon});

  PokemonInfo pokemon;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: pokemon.evolutions.length,
        itemBuilder: (_, i) {
          return EvolutionGrid(evolution: pokemon.evolutions[i]);
        });
  }
}
