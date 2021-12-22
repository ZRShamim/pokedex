import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_info.dart';

class AboutTab extends StatelessWidget {
  AboutTab({
    required this.pokemon,
  });

  final PokemonInfo pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Species',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                pokemon.category,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Height',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                pokemon.height,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Weight',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                pokemon.weight,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Abilities',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              for (var i = 0; i < pokemon.abilities.length; i++)
                Text(
                  pokemon.abilities[i],
                  style: const TextStyle(fontSize: 20),
                ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Breeding',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 95,
                  child: Text(
                    'Gender',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.male_outlined,
                    color: Colors.blueAccent,
                  ),
                  Text(
                    '${pokemon.malePercentage}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.female_outlined,
                    color: Colors.pinkAccent,
                  ),
                  Text(
                    '${pokemon.malePercentage}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 95,
                  child: Text(
                    'Egg Groups',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                pokemon.eggGroups,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                const SizedBox(
                  width: 95,
                  child: Text(
                    'Egg Cycle',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${pokemon.cycles}',
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}