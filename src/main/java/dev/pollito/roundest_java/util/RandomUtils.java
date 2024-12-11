package dev.pollito.roundest_java.util;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

public class RandomUtils {
  private static final int POKEMON_ID_MIN = 1;
  private static final int POKEMON_ID_MAX = 151;
  private static final int MAX_COUNT = 10;
  private static final Random RANDOM = new Random();

  private RandomUtils(){}

  @Contract("_ -> new")
  public static @NotNull List<Long> generateRandomIds(int count) {
    if (count > MAX_COUNT) {
      throw new IllegalArgumentException("Count cannot exceed " + MAX_COUNT);
    }

    Set<Long> ids = new HashSet<>();
    while (ids.size() < count) {
      ids.add(POKEMON_ID_MIN + RANDOM.nextLong(POKEMON_ID_MAX));
    }
    return new ArrayList<>(ids);
  }
}
