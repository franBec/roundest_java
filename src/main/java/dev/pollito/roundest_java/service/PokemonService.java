package dev.pollito.roundest_java.service;

import dev.pollito.roundest_java.model.Pokemon;
import dev.pollito.roundest_java.model.Pokemons;
import org.springframework.data.domain.PageRequest;

public interface PokemonService {
  Pokemons findAll(String name, PageRequest pageRequest, Boolean random);
  Pokemon findById(Long id);
  Void incrementPokemonVotes(Long id);
}
