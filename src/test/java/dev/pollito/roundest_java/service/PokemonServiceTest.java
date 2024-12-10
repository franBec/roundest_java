package dev.pollito.roundest_java.service;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import dev.pollito.roundest_java.entity.Pokemon;
import dev.pollito.roundest_java.mapper.PokemonModelMapper;
import dev.pollito.roundest_java.repository.PokemonRepository;
import dev.pollito.roundest_java.service.impl.PokemonServiceImpl;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mapstruct.factory.Mappers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

@ExtendWith(MockitoExtension.class)
class PokemonServiceTest {
  @InjectMocks private PokemonServiceImpl pokemonService;
  @Mock private PokemonRepository pokemonRepository;

  @SuppressWarnings("unused")
  @Spy
  private PokemonModelMapper pokemonModelMapper = Mappers.getMapper(PokemonModelMapper.class);

  @Test
  void whenFindAllThenReturnPokemons() {
    when(pokemonRepository.findAll(any(PageRequest.class)))
        .thenReturn(new PageImpl<>(List.of(), PageRequest.of(0, 10), 0));
    assertNotNull(pokemonService.findAll(null, mock(PageRequest.class), false));
  }

  @Test
  void whenFindAllRandomThenReturnPokemons() {
    when(pokemonRepository.findByIds(anyList())).thenReturn(List.of());

    PageRequest pageRequest = mock(PageRequest.class);
    when(pageRequest.getPageSize()).thenReturn(2);

    assertNotNull(pokemonService.findAll(null, pageRequest, true));
  }

  @Test
  void whenFindAllWithNameThenReturnPokemons() {
    when(pokemonRepository.findByNameContainingIgnoreCase(anyString(), any(PageRequest.class))).thenReturn(new PageImpl<>(List.of(), PageRequest.of(0, 10), 0));
    assertNotNull(pokemonService.findAll("abra", mock(PageRequest.class), false));
  }

  @Test
  void whenFindByIdThenReturnPokemon() {
    when(pokemonRepository.findById(anyLong())).thenReturn(Optional.of(mock(Pokemon.class)));
    assertNotNull(pokemonService.findById(1L));
  }

  @Test
  void whenIncrementPokemonVotesThenReturnVoid() {
    Pokemon pokemon = new Pokemon();
    int pokemonInitialVotes = pokemon.getVotes();

    when(pokemonRepository.findById(anyLong())).thenReturn(Optional.of(pokemon));
    when(pokemonRepository.save(any(Pokemon.class))).thenReturn(pokemon);

    assertNull(pokemonService.incrementPokemonVotes(1L));
    assertEquals(pokemonInitialVotes + 1, pokemon.getVotes());
  }
}
