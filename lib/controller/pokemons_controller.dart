import 'package:get/get.dart';
import 'package:pokedex/api_module/api_service.dart';
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
}
