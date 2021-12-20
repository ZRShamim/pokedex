import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemon_controller.dart';
import 'package:pokedex/model/pokemon_info.dart';

class Grid extends StatelessWidget {
  final PokemonController pokemonController = Get.put(PokemonController());
  PokemonInfo pokemon;

  Grid({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.network(pokemon.imageurl, width: 100,),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 100,
              color: Colors.red,
              child: Text(pokemon.name,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
