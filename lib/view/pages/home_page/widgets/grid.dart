import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/constant/theme/text_theme.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/view/common widgets/type_card.dart';

class Grid extends StatelessWidget {
  final PokemonsController pokemonController = Get.find();
  int index;

  Grid({required this.index});

  @override
  Widget build(BuildContext context) {
    var pokemon = pokemonController.pokemonInfoList[index];
    return InkWell(
      onTap: () {
        Get.toNamed('/info-page', arguments: index);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset(
              'assets/image/pokeball2.png',
              width: 120,
            ),
            Image.network(
              pokemon.imageurl,
              width: 100,
            ),
            Positioned(
                top: 25,
                left: 20,
                child: SizedBox(
                  width: 120,
                  child: Text(pokemon.name, style: CustomTextThemes().cardName),
                )),
            // TypeBox(index: index),
            Positioned(
              top: 55,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < pokemon.typeofpokemon.length; i++)
                    Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TypeCard(
                            typeofpokemon: pokemon.typeofpokemon[i].name
                                ))
                ],
              ),
            ),
            Positioned(
                top: 30,
                right: 20,
                child: Text(
                  pokemon.id,
                  style: CustomTextThemes().cardId,
                )),
          ],
        ),
      ),
    );
  }
}
