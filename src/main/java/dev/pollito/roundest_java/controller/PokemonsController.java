package dev.pollito.roundest_java.controller;

import dev.pollito.roundest_java.api.PokemonsApi;
import dev.pollito.roundest_java.model.Pokemon;
import dev.pollito.roundest_java.model.Pokemons;
import dev.pollito.roundest_java.service.PokemonService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class PokemonsController implements PokemonsApi {
  private final PokemonService pokemonService;

  @Override
  public ResponseEntity<Pokemons> findAll(
      String name,
      Integer pageNumber,
      Integer pageSize,
      List<String> pageSort,
      Boolean random) {
    return ResponseEntity.ok(
        pokemonService.findAll(
            name,
            pageNumber,
            pageSize,
            pageSort,
            random
        )
    );
  }

  @Override
  public ResponseEntity<Pokemon> findById(Long id) {
    return ResponseEntity.ok(pokemonService.findById(id));
  }

  @Override
  public ResponseEntity<Void> incrementPokemonVotes(Long id) {
    return new ResponseEntity<>(pokemonService.incrementPokemonVotes(id), HttpStatus.NO_CONTENT);
  }
}
