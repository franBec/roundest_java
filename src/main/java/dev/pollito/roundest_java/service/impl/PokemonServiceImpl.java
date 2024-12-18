package dev.pollito.roundest_java.service.impl;

import dev.pollito.roundest_java.entity.Pokemon;
import dev.pollito.roundest_java.mapper.PokemonModelMapper;
import dev.pollito.roundest_java.model.Pokemons;
import dev.pollito.roundest_java.repository.PokemonRepository;
import dev.pollito.roundest_java.service.PokemonService;
import dev.pollito.roundest_java.util.PageableUtils;
import dev.pollito.roundest_java.util.RandomUtils;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
@RequiredArgsConstructor
public class PokemonServiceImpl implements PokemonService {
  private final PokemonRepository pokemonRepository;
  private final PokemonModelMapper pokemonModelMapper;

  @Override
  public Pokemons findAll(
      String name, Integer pageNumber, Integer pageSize, List<String> pageSort, Boolean random) {
    if (Boolean.TRUE.equals(random)) {
      return getRandomPokemons(pageSize);
    }

    Pageable pageable = PageableUtils.createPageable(pageNumber, pageSize, pageSort);

    if (StringUtils.hasText(name)) {
      return pokemonModelMapper.map(
          pokemonRepository.findByNameContainingIgnoreCase(name, pageable));
    }
    return pokemonModelMapper.map(pokemonRepository.findAll(pageable));
  }

  @Override
  public dev.pollito.roundest_java.model.Pokemon findById(Long id) {
    return pokemonModelMapper.map(pokemonRepository.findById(id).orElseThrow());
  }

  @Override
  public Void incrementPokemonVotes(Long id) {
    Pokemon pokemon = pokemonRepository.findById(id).orElseThrow();

    pokemon.setVotes(pokemon.getVotes() + 1);
    pokemonRepository.save(pokemon);
    return null;
  }

  private Pokemons getRandomPokemons(int size) {
    List<Pokemon> pokemons = pokemonRepository.findByIds(RandomUtils.generateRandomIds(size));
    return pokemonModelMapper.map(
        new PageImpl<>(pokemons, PageRequest.of(0, size), pokemons.size()));
  }
}
