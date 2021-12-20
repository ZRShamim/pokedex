import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';

class InfoPage extends StatelessWidget {
  PokemonsController pokemonsController = Get.find();
  @override
  Widget build(BuildContext context) {
    var index = Get.arguments;
    var pokemon = pokemonsController.pokemonInfoList[index];
    var typeBgColor = pokemonsController
        .typeColor(pokemon.typeofpokemon[0].name);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        color: typeBgColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined)),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        pokemon.name,
                        style: const TextStyle(fontSize: 40),
                      ),
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              color: pokemonsController.typeColor(
                                  pokemon.typeofpokemon[1].name),
                              child: Text(
                                pokemon.typeofpokemon[1].name,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
