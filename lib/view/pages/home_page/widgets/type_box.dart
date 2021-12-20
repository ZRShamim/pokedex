import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';

class TypeBox extends StatelessWidget {
  PokemonsController pokemonsController = Get.find();
  TypeBox({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    var pokemon = pokemonsController.pokemonInfoList[index];
    return Positioned(
      top: 60,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < pokemon.typeofpokemon.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: pokemonsController
                        .typeColor(pokemon.typeofpokemon[i].name),
                    child: Text(
                      pokemon.typeofpokemon[i].name,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )),
              ),
            )
        ],
      ),
    );
  }
}
