import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_info.dart';

class BaseStatesTab extends StatelessWidget {
  BaseStatesTab({required this.pokemon});

  PokemonInfo pokemon;

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
                  'HP',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Attack',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Defense',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Sp. Atk',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Sp. Def',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Speed',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Base Exp.',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
              const SizedBox(
                width: 100,
                child: Text(
                  'Total',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
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
    );
  }
}
