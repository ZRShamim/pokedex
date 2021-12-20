import 'package:http/http.dart' as http;
import 'package:pokedex/model/pokemon_info.dart';

class ApiService {
  static Future<List<PokemonInfo>?> fetchPokemon() async {
    const url = 'https://gist.githubusercontent.com/scitbiz/0bfdd96d3ab9ee20c2e572e47c6834c7/raw/pokemons.json';
    final response = await http.get(Uri.parse(url));
    try {
      if (response.statusCode == 200) {
        List<PokemonInfo> pokemonInfo = pokemonInfoFromJson(response.body);
        return pokemonInfo;
      }
    } catch (e) {
      rethrow;
    }
  }
}
