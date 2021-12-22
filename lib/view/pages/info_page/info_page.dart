import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/controller/tabs_controller.dart';
import 'package:pokedex/model/pokemon_info.dart';
import 'package:pokedex/view/common%20widgets/type_card.dart';
import 'package:pokedex/view/pages/info_page/widget/about_tab.dart';
import 'package:pokedex/view/pages/info_page/widget/base_stats_tab.dart';
import 'package:pokedex/view/pages/info_page/widget/evolution_tab.dart';

class InfoPage extends StatelessWidget {
  PokemonsController pokemonsController = Get.find();

  @override
  Widget build(BuildContext context) {
    var index = Get.arguments;
    var pokemon = pokemonsController.pokemonInfoList[index];
    final TabsController _tabs = Get.put(TabsController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: const Icon(Icons.arrow_back),
        // ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned(
                    top: 70,
                    right: 40,
                    child: Image.asset(
                      'assets/image/pokeball.png',
                      height: 350,
                    )),
                Positioned(
                    top: 70,
                    right: 40,
                    child: Image.network(
                      pokemon.imageurl,
                      height: 350,
                    )),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                pokemon.name,
                                style: const TextStyle(fontSize: 40),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  for (var i = 0;
                                      i < pokemon.typeofpokemon.length;
                                      i++)
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: TypeCard(
                                        typeofpokemon:
                                            pokemon.typeofpokemon[i].name,
                                        color: pokemonsController.typeColor(
                                            pokemon.typeofpokemon[i].name),
                                      ),
                                    ),
                                ],
                              ),
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
          TabBar(
            tabs: const [
              Tab(
                text: 'About',
              ),
              Tab(
                text: 'Base Stats',
              ),
              Tab(
                text: 'Evolution',
              ),
            ],
            controller: _tabs.controller,
            labelColor: Colors.black,
          ),
          Expanded(
            child: TabBarView(controller: _tabs.controller, children: [
              AboutTab(pokemon: pokemon),
              BaseStatesTab(pokemon: pokemon),
              EvolutionTab(pokemon: pokemon)
              // Center(child: Text('In Progress'),)
            ]),
          )
          // AboutTab(pokemon: pokemon)
          // Text('Evolution'),
        ],
      ),
    );
  }
}


