import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/model/pokemon_info.dart';
import 'package:pokedex/view/pages/home_page/widgets/type_box.dart';

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
            Text(pokemon.name)
          ],
        ),
      ],
    );
  }
}
