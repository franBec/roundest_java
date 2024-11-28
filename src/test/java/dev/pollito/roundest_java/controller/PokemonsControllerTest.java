package dev.pollito.roundest_java.controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyBoolean;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import dev.pollito.roundest_java.model.PokemonSortProperty;
import dev.pollito.roundest_java.model.Pokemons;
import dev.pollito.roundest_java.model.SortDirection;
import dev.pollito.roundest_java.service.PokemonService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@ExtendWith(MockitoExtension.class)
class PokemonsControllerTest {
  @InjectMocks private PokemonsController pokemonsController;
  @Mock private PokemonService pokemonService;

  @Test
  void whenFindAllThenOk() {
    when(pokemonService.findAll(any(PageRequest.class), anyBoolean()))
        .thenReturn(mock(Pokemons.class));
    ResponseEntity<Pokemons> response =
        pokemonsController.findAll(0, 10, PokemonSortProperty.ID, SortDirection.ASC, true);

    assertEquals(HttpStatus.OK, response.getStatusCode());
    assertNotNull(response.getBody());
  }

  @Test
  void whenIncrementPokemonVotesThenReturnNoContent() {
    doNothing().when(pokemonService).incrementPokemonVotes(anyLong());
    ResponseEntity<Void> response = pokemonsController.incrementPokemonVotes(1L);
    assertEquals(HttpStatus.NO_CONTENT, response.getStatusCode());
    assertNull(response.getBody());

    verify(pokemonService).incrementPokemonVotes(anyLong());
  }
}
