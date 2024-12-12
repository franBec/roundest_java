package dev.pollito.roundest_java.controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyBoolean;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import dev.pollito.roundest_java.model.Pokemon;
import dev.pollito.roundest_java.model.Pokemons;
import dev.pollito.roundest_java.service.PokemonService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.Collections;

@ExtendWith(MockitoExtension.class)
class PokemonsControllerTest {
  @InjectMocks private PokemonsController pokemonsController;
  @Mock private PokemonService pokemonService;

  @Test
  void whenFindAllThenOk() {
    when(pokemonService.findAll(
        anyString(),
        anyInt(),
        anyInt(),
        anyList(),
        anyBoolean()
    ))
        .thenReturn(mock(Pokemons.class));
    ResponseEntity<Pokemons> response =
        pokemonsController.findAll(
            "Bulbasur",
            0,
            10,
            Collections.emptyList(),
            true
        );

    assertEquals(HttpStatus.OK, response.getStatusCode());
    assertNotNull(response.getBody());
  }

  @Test
  void whenFindByIdThenReturnOK() {
    when(pokemonService.findById(anyLong())).thenReturn(mock(Pokemon.class));
    ResponseEntity<Pokemon> response = pokemonsController.findById(1L);
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
