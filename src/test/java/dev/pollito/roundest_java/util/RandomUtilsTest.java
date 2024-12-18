package dev.pollito.roundest_java.util;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;
import org.junit.jupiter.api.Test;

class RandomUtilsTest {
  @Test
  void shouldGenerateRandomIdsWithValidCount() {
    int count = 2;

    List<Long> randomIds = RandomUtils.generateRandomIds(count);

    assertEquals(count, randomIds.size());
    assertEquals(randomIds.size(), randomIds.stream().distinct().count());
    assertTrue(randomIds.stream().allMatch(id -> id >= 1 && id <= 151));
  }

  @Test
  void shouldThrowIllegalArgumentExceptionWhenCountIsTooMuch() {
    assertThrows(IllegalArgumentException.class, () -> RandomUtils.generateRandomIds(99));
  }

  @Test
  void shouldGenerateEmptyListWhenCountIsLessThan1() {
    assertTrue(RandomUtils.generateRandomIds(0).isEmpty());
    assertTrue(RandomUtils.generateRandomIds(-1).isEmpty());
  }
}
