package dev.pollito.roundest_java.service.impl;

import dev.pollito.roundest_java.entity.Pokemon;
import dev.pollito.roundest_java.mapper.PokemonModelMapper;
import dev.pollito.roundest_java.model.Pokemons;
import dev.pollito.roundest_java.repository.PokemonRepository;
import dev.pollito.roundest_java.service.PokemonService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import lombok.RequiredArgsConstructor;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PokemonServiceImpl implements PokemonService {
  private static final int POKEMON_ID_MIN = 1;
  private static final int POKEMON_ID_MAX = 151;
  private static final Random RANDOM = new Random();
  private final PokemonRepository pokemonRepository;
  private final PokemonModelMapper pokemonModelMapper;

  @Override
  public Pokemons findAll(PageRequest pageRequest, Boolean random) {
    if (Boolean.TRUE.equals(random)) {
      return getRandomPokemons(pageRequest.getPageSize());
    }
    return pokemonModelMapper.map(pokemonRepository.findAll(pageRequest));
  }

  private Pokemons getRandomPokemons(int size) {
    List<Pokemon> pokemons = pokemonRepository.findByIds(generateRandomIds(size));
    return pokemonModelMapper.map(
        new PageImpl<>(pokemons, PageRequest.of(0, size), pokemons.size()));
  }

  @Override
  public Void incrementPokemonVotes(Long id) {
    Pokemon pokemon = pokemonRepository.findById(id).orElseThrow();

    pokemon.setVotes(pokemon.getVotes() + 1);
    pokemonRepository.save(pokemon);
    return null;
  }

  @Contract("_ -> new")
  private static @NotNull List<Long> generateRandomIds(int count) {
    Set<Long> ids = new HashSet<>();
    while (ids.size() < count) {
      ids.add(POKEMON_ID_MIN + RANDOM.nextLong(POKEMON_ID_MAX));
    }
    return new ArrayList<>(ids);
  }
}
