package dev.pollito.roundest_java.mapper;

import dev.pollito.roundest_java.entity.Pokemon;
import dev.pollito.roundest_java.model.Pokemons;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;
import org.springframework.data.domain.Page;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface PokemonModelMapper {
  Pokemons map(Page<Pokemon> pokemonPage);
}
