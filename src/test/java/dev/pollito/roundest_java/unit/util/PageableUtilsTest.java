package dev.pollito.roundest_java.unit.util;

import dev.pollito.roundest_java.util.PageableUtils;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

class PageableUtilsTest {
  @Test
  void shouldCreatePageableWithDefaultSortWhenNoSortFieldsProvided() {
    int page = 0;
    int size = 10;
    List<String> sort = Collections.emptyList();

    Pageable pageable = PageableUtils.createPageable(0, 10, sort);

    assertEquals(page, pageable.getPageNumber());
    assertEquals(size, pageable.getPageSize());
    assertEquals(Sort.by(Sort.Direction.ASC, "id"), pageable.getSort());
  }

  @Test
  void shouldDefaultToAscWhenNoDirectionIsProvided() {
    Pageable pageable = PageableUtils.createPageable(0, 10,  List.of("name"));
    assertTrue(Objects.requireNonNull(pageable.getSort().getOrderFor("name")).isAscending());
  }


  @Test
  void shouldAddIdSortIfNotProvided() {
    Pageable pageable = PageableUtils.createPageable(0, 10, List.of("votes:desc"));

    assertTrue(Objects.requireNonNull(pageable.getSort().getOrderFor("votes")).isDescending());
    assertTrue(Objects.requireNonNull(pageable.getSort().getOrderFor("id")).isAscending());
  }

  @Test
  void shouldNotAddIdSortIfAlreadyProvided() {
    Pageable pageable = PageableUtils.createPageable(0, 10, List.of("id:desc"));

    assertEquals(Sort.by(Sort.Direction.DESC, "id"), pageable.getSort());
  }
}