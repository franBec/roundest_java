package dev.pollito.roundest_java.util;

import org.jetbrains.annotations.NotNull;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;

public class PageableUtils {
  private PageableUtils(){}

  public static @NotNull Pageable createPageable(int page, int size, @NotNull List<String> sort) {
    Sort combinedSort = Sort.unsorted();
    boolean hasIdSort = false;

    for (String sortField : sort) {
      String[] sortParams = sortField.split(":");
      Sort.Direction direction = (sortParams.length > 1 && "desc".equalsIgnoreCase(sortParams[1]))
          ? Sort.Direction.DESC
          : Sort.Direction.ASC;

      if ("id".equalsIgnoreCase(sortParams[0])) {
        hasIdSort = true;
      }

      combinedSort = combinedSort.and(Sort.by(direction, sortParams[0]));
    }

    if (!hasIdSort) {
      combinedSort = combinedSort.and(Sort.by(Sort.Direction.ASC, "id"));
    }

    return PageRequest.of(page, size, combinedSort);
  }
}
