package dev.pollito.roundest_java.controller;

import dev.pollito.roundest_java.api.PokemonsApi;
import dev.pollito.roundest_java.model.PokemonSortProperty;
import dev.pollito.roundest_java.model.Pokemons;
import dev.pollito.roundest_java.model.SortDirection;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class PokemonsController implements PokemonsApi {
  @Override
  public ResponseEntity<Pokemons> findAll(
      Integer pageNumber,
      Integer pageSize,
      PokemonSortProperty sortProperty,
      SortDirection sortDirection,
      Boolean random) {
    return PokemonsApi.super.findAll(pageNumber, pageSize, sortProperty, sortDirection, random);
  }

  @Override
  public ResponseEntity<Void> incrementPokemonVotes(Long id) {
    return PokemonsApi.super.incrementPokemonVotes(id);
  }
}
