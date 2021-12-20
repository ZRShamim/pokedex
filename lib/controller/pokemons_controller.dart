import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pokedex/api_module/api_service.dart';
import 'package:pokedex/constant/colors.dart';
import 'package:pokedex/model/pokemon_info.dart';

class PokemonsController extends GetxController {
  var isLoading = true.obs;
  var pokemonInfoList = <PokemonInfo>[].obs;

  @override
  void onInit() {
    fetchPokemon();
    super.onInit();
  }

  Future<void> fetchPokemon() async {
    try {
      isLoading(true);
      var pokemon = await ApiService.fetchPokemon();
      if (pokemon != null) {
        pokemonInfoList.assignAll(pokemon);
      }
    } finally {
      isLoading(false);
    }
  }

  Color typeColor(String type) {
    
    if (type.toLowerCase() == 'grass') {
      return grassType;
    }
    else if(type.toLowerCase() == 'bug'){
      return bugType;
    }
    else if(type.toLowerCase() == 'dark'){
      return darkType;
    }
    else if(type.toLowerCase() == 'dragon'){
      return dragonType;
    }
    else if(type.toLowerCase() == 'electric'){
      return electricType;
    }
    else if(type.toLowerCase() == 'fairy'){
      return fairyType;
    }
    else if(type.toLowerCase() == 'fighting'){
      return fightingType;
    }
    else if(type.toLowerCase() == 'fire'){
      return fireType;
    }
    else if(type.toLowerCase() == 'flying'){
      return flyingType;
    }
    else if(type.toLowerCase() == 'ghost'){
      return ghostType;
    }
    else if(type.toLowerCase() == 'ground'){
      return groundType;
    }
    else if(type.toLowerCase() == 'ice'){
      return iceType;
    }
    else if(type.toLowerCase() == 'normal'){
      return normalType;
    }
    else if(type.toLowerCase() == 'poison'){
      return poisonType;
    }
    else if(type.toLowerCase() == 'psychic'){
      return psychicType;
    }
    else if(type.toLowerCase() == 'rock'){
      return rockType;
    }
    else if(type.toLowerCase() == 'steel'){
      return steelType;
    }
    else if(type.toLowerCase() == 'water'){
      return waterType;
    }
    else{
      return noneType;
    }
  }
}
