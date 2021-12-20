import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/view/pages/home_page/widgets/grid.dart';

class GridLayout extends StatelessWidget {
  final PokemonsController pokemonsController = Get.put(PokemonsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (pokemonsController.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: pokemonsController.pokemonInfoList.length,
            itemBuilder: (_, i) {
              return Grid(pokemon: pokemonsController.pokemonInfoList[i],);
            });
      }
    });
  }
}
