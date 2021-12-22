import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/model/pokemon_info.dart';
import 'package:pokedex/view/pages/info_page/widget/evolution_grid.dart';

class EvolutionTab extends StatelessWidget {
  PokemonsController pokemonInfo = Get.find();
  EvolutionTab({required this.pokemon});

  PokemonInfo pokemon;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: pokemon.evolutions.length,
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
