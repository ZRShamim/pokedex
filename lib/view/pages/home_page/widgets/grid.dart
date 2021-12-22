import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/constant/theme/text_theme.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/view/common widgets/type_card.dart';
import 'package:pokedex/view/pages/home_page/widgets/type_box.dart';

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
            TypeBox(index: index),
            
            // for (var i = 0; i < pokemon.typeofpokemon.length; i++)
            //   TypeCard(
            //       typeofpokemon: pokemon.typeofpokemon[i].name,
            //       color: pokemonController
            //           .typeColor(pokemon.typeofpokemon[i].name)),
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
