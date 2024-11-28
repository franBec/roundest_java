package dev.pollito.roundest_java.converter;

import dev.pollito.roundest_java.model.PokemonSortProperty;
import org.jetbrains.annotations.NotNull;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class UserSortPropertyConverter implements Converter<String, PokemonSortProperty> {
  @Override
  public PokemonSortProperty convert(@NotNull String source) {
    return PokemonSortProperty.fromValue(source);
  }
}
