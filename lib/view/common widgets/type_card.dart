import 'package:flutter/material.dart';

class TypeCard extends StatelessWidget {
  const TypeCard({Key? key, required this.typeofpokemon, required this.color})
      : super(key: key);

  final String typeofpokemon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          color: color,
          child: Text(
            typeofpokemon,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          )),
    );
  }
}