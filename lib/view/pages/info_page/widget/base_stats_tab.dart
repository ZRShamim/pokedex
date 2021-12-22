import 'package:flutter/material.dart';
import 'package:pokedex/constant/theme/text_theme.dart';
import 'package:pokedex/model/pokemon_info.dart';
import 'package:pokedex/view/common%20widgets/type_card.dart';

class BaseStatesTab extends StatelessWidget {
  BaseStatesTab({required this.pokemon});

  PokemonInfo pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 10, right: 40, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'HP',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.hp.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Attack',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.attack.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Defense',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.defense.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Sp. Atk',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.specialAttack.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Sp. Def',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.specialDefense.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Speed',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.speed.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Base Exp.',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.baseExp.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Total',
                        style: CustomTextThemes().stat,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      pokemon.total.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Weak against',
                      style: CustomTextThemes().stat,
                    ),
                  ),
                  for (var i = 0; i < pokemon.weaknesses.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TypeCard(typeofpokemon: pokemon.weaknesses[i].name),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
