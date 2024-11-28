package dev.pollito.roundest_java.repository;

import dev.pollito.roundest_java.entity.Pokemon;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface PokemonRepository extends JpaRepository<Pokemon, Long> {
  @Query("SELECT p FROM Pokemon p WHERE p.id IN :ids")
  List<Pokemon> findByIds(@Param("ids") List<Long> ids);
}
