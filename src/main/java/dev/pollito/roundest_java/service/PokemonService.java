package dev.pollito.roundest_java.service;

import dev.pollito.roundest_java.model.Pokemons;
import org.springframework.data.domain.PageRequest;

public interface PokemonService {
  Pokemons findAll(PageRequest pageRequest, Boolean random);

  Void incrementPokemonVotes(Long id);
}
