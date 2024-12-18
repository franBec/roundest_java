package dev.pollito.roundest_java.service;

import dev.pollito.roundest_java.model.Pokemon;
import dev.pollito.roundest_java.model.Pokemons;
import java.util.List;

public interface PokemonService {
  Pokemons findAll(
      String name, Integer pageNumber, Integer pageSize, List<String> pageSort, Boolean random);

  Pokemon findById(Long id);

  Void incrementPokemonVotes(Long id);
}
