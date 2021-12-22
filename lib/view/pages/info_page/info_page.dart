import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/controller/pokemons_controller.dart';
import 'package:pokedex/controller/tabs_controller.dart';
import 'package:pokedex/view/common%20widgets/type_card.dart';
import 'package:pokedex/view/pages/info_page/widget/about_tab.dart';
import 'package:pokedex/view/pages/info_page/widget/base_stats_tab.dart';
import 'package:pokedex/view/pages/info_page/widget/evolution_grid_layout.dart';

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
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                                ),
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
            indicatorColor: Colors.red,
            labelStyle: const TextStyle(
              fontSize: 18,
              fontFamily: 'Nunito',
            ),
            controller: _tabs.controller,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.red[100],
          ),
          Expanded(
            child: TabBarView(controller: _tabs.controller, children: [
              AboutTab(pokemon: pokemon),
              BaseStatesTab(pokemon: pokemon),
              EvolutionGridlayout(pokemon: pokemon)
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
